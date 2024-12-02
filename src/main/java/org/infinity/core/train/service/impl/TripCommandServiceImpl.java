package org.infinity.core.train.service.impl;

import lombok.RequiredArgsConstructor;
import org.infinity.common.ratelimit.RateLimiter;
import org.infinity.core.common.exception.MyException;
import org.infinity.core.station.infrastructure.repository.StationRepository;
import org.infinity.core.train.infrastructure.factory.TripFactory;
import org.infinity.core.train.infrastructure.repository.TrainRepository;
import org.infinity.core.train.infrastructure.repository.TripRepository;
import org.infinity.core.train.model.dto.command.EnterTripBatchCommand;
import org.infinity.core.train.model.dto.response.EnterTripBatchResponse;
import org.infinity.core.train.model.po.TripPO;
import org.infinity.core.train.service.TripCommandService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

import static com.google.common.collect.ImmutableList.toImmutableList;
import static org.infinity.core.common.constants.I12306Constants.DEFAULT_COMMAND_TPS;
import static org.infinity.core.common.exception.ErrorCodeEnum.STATION_IDS_NOT_ALL_EXISTS;
import static org.infinity.core.common.exception.ErrorCodeEnum.TRAIN_IDS_NOT_ALL_EXISTS;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/26
 * @className TripCommandServiceImpl
 * @desc
 */
@Service
@RequiredArgsConstructor
public class TripCommandServiceImpl implements TripCommandService {

    private final TripRepository tripRepository;
    private final TrainRepository trainRepository;
    private final StationRepository stationRepository;
    private final TripFactory tripFactory;
    private final RateLimiter rateLimiter;

    @Override
    @Transactional
    public EnterTripBatchResponse enterTripBatch(EnterTripBatchCommand command) {
        rateLimiter.applyFor("Trip:enterTripBatch", DEFAULT_COMMAND_TPS);

        if (!trainRepository.allIdsExist(command.getTripInfos().stream()
                .map(EnterTripBatchCommand.TripInfo::getTrainId)
                .collect(toImmutableList()))) {
            throw new MyException(TRAIN_IDS_NOT_ALL_EXISTS, "Train ids not all exists.");
        }

        if (!stationRepository.allIdsExist(command.getTripInfos().stream()
                .map(EnterTripBatchCommand.TripInfo::getOriginStationId)
                .collect(toImmutableList()))) {
            throw new MyException(STATION_IDS_NOT_ALL_EXISTS, "Origin Station ids not all exists.");
        }

        if (!stationRepository.allIdsExist(command.getTripInfos().stream()
                .map(EnterTripBatchCommand.TripInfo::getTerminalStationId)
                .collect(toImmutableList()))) {
            throw new MyException(STATION_IDS_NOT_ALL_EXISTS, "Terminal Station ids not all exists.");
        }

        List<TripPO> trips = command.getTripInfos().stream()
                .map(tripFactory::enterTripBatch)
                .collect(toImmutableList());

        tripRepository.saveBatch(trips, trips.size());

        return EnterTripBatchResponse.builder()
                .tripIds(trips.stream().map(TripPO::getId).collect(toImmutableList()))
                .build();
    }

}
