package org.infinity.core.train.service.impl;

import com.google.common.collect.ImmutableList;
import lombok.RequiredArgsConstructor;
import org.infinity.common.ratelimit.RateLimiter;
import org.infinity.core.common.exception.MyException;
import org.infinity.core.common.utils.MapUtils;
import org.infinity.core.train.infrastructure.factory.SeatFactory;
import org.infinity.core.train.infrastructure.factory.TrainFactory;
import org.infinity.core.train.infrastructure.repository.CarriageRepository;
import org.infinity.core.train.infrastructure.repository.SeatRepository;
import org.infinity.core.train.infrastructure.repository.TrainRepository;
import org.infinity.core.train.model.dto.command.EnterCarriageCommand;
import org.infinity.core.train.model.dto.command.EnterTrainBatchCommand;
import org.infinity.core.train.model.dto.response.EnterCarriageResponse;
import org.infinity.core.train.model.dto.response.EnterTrainBatchResponse;
import org.infinity.core.train.model.po.CarriagePO;
import org.infinity.core.train.model.po.SeatPO;
import org.infinity.core.train.model.po.TrainPO;
import org.infinity.core.train.service.TrainCommandService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

import static com.google.common.collect.ImmutableList.toImmutableList;
import static org.infinity.core.common.constants.I12306Constants.DEFAULT_COMMAND_TPS;
import static org.infinity.core.common.exception.ErrorCodeEnum.INVALID_CAPACITIES;
import static org.infinity.core.common.exception.ErrorCodeEnum.TRAIN_NOT_FOUND;
import static org.infinity.core.common.utils.ListUtils.listToString;
import static org.infinity.core.common.utils.MapUtils.mapOf;
import static org.infinity.core.train.model.CarriageLevelEnum.FIRST_CLASS;
import static org.infinity.core.train.model.CarriageLevelEnum.SECOND_CLASS;
import static org.infinity.core.train.model.CarriageTypeEnum.PASSENGER_CARRIAGE;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/26
 * @className TrainCommandServiceImpl
 * @desc
 */
@Service
@RequiredArgsConstructor
public class TrainCommandServiceImpl implements TrainCommandService {

    private final TrainRepository trainRepository;
    private final CarriageRepository carriageRepository;
    private final SeatRepository seatRepository;
    private final TrainFactory trainFactory;
    private final SeatFactory seatFactory;
    private final RateLimiter rateLimiter;

    @Override
    @Transactional
    public EnterTrainBatchResponse enterTrainBatch(EnterTrainBatchCommand command) {
        rateLimiter.applyFor("Train:enterTrainBatch", DEFAULT_COMMAND_TPS);

        List<TrainPO> trains = command.getTrainInfos().stream()
                .map(trainFactory::enterTrainBatch)
                .collect(toImmutableList());

        trainRepository.saveBatch(trains);

        return EnterTrainBatchResponse.builder()
                .trainIds(trains.stream().map(TrainPO::getId).collect(toImmutableList()))
                .build();
    }

    @Override
    @Transactional
    public EnterCarriageResponse enterCarriages(EnterCarriageCommand command) {
        rateLimiter.applyFor("Train:enterCarriages", DEFAULT_COMMAND_TPS);

        String trainId = command.getTrainId();
        if (!trainRepository.existsById(trainId)) {
            throw new MyException(TRAIN_NOT_FOUND, "Train not found.", "trainId", command.getTrainId());
        }

        Integer carriageCount = command.getCarriageCount();
        if (command.getCapacities().size() != carriageCount) {
            throw new MyException(INVALID_CAPACITIES, "The capacity of the carriage does not match the number of carriages.",
                    mapOf("capacities", listToString(command.getCapacities()), "carriageCount", carriageCount));
        }

        List<CarriagePO> carriages = IntStream.range(1, carriageCount + 1)
                .mapToObj(idx -> {
                    String number = String.format("%02d", idx);
                    if (command.getFirstClass().contains(idx)) {
                        return new CarriagePO(trainId, number, FIRST_CLASS, PASSENGER_CARRIAGE);
                    }
                    return new CarriagePO(trainId, number, SECOND_CLASS, PASSENGER_CARRIAGE);
                })
                .collect(toImmutableList());

        carriageRepository.saveBatch(carriages);

        // 批量生成座位
        List<SeatPO> seats = IntStream.range(0, carriageCount)
                .mapToObj(idx -> {
                    Integer capacity = command.getCapacities().get(idx);
                    CarriagePO carriage = carriages.get(idx);
                    return IntStream.range(1, capacity + 1)
                            .mapToObj(num -> seatFactory.create(carriage.getId(), num, carriage.getLevel()))
                            .collect(toImmutableList());
                })
                .flatMap(List::stream)
                .collect(toImmutableList());

        seatRepository.saveBatch(seats);

        return EnterCarriageResponse.builder()
                .carriageIds(carriages.stream().map(CarriagePO::getId).collect(toImmutableList()))
                .build();
    }



}
