package org.infinity.core.trip.service.impl;

import lombok.RequiredArgsConstructor;
import org.infinity.common.event.EventProducer;
import org.infinity.common.ratelimit.RateLimiter;
import org.infinity.core.common.exception.MyException;
import org.infinity.core.station.infrastructure.repository.StationRepository;
import org.infinity.core.train.infrastructure.repository.TrainRepository;
import org.infinity.core.trip.infrastructure.factory.TripFactory;
import org.infinity.core.trip.infrastructure.repository.TripRepository;
import org.infinity.core.trip.infrastructure.repository.TripStationRepository;
import org.infinity.core.trip.model.dto.command.*;
import org.infinity.core.trip.model.dto.response.*;
import org.infinity.core.trip.model.event.TripCreatedEvent;
import org.infinity.core.trip.model.po.TripPO;
import org.infinity.core.trip.model.po.TripStationPO;
import org.infinity.core.trip.service.TripCommandService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

import static com.google.common.collect.ImmutableList.toImmutableList;
import static org.infinity.core.common.constants.I12306Constants.DEFAULT_COMMAND_TPS;
import static org.infinity.core.common.constants.I12306EventIdConstants.TRIP_CREATED;
import static org.infinity.core.common.exception.ErrorCodeEnum.STATION_IDS_NOT_ALL_EXISTS;
import static org.infinity.core.common.exception.ErrorCodeEnum.TRAIN_IDS_NOT_ALL_EXISTS;
import static org.infinity.core.trip.model.TripStatusEnum.*;

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
    private final TripStationRepository tripStationRepository;
    private final TripFactory tripFactory;
    private final RateLimiter rateLimiter;
    private final EventProducer eventProducer;

    @Override
    @Transactional
    public EnterTripBatchResponse enterTripBatch(EnterTripBatchCommand command) {
        rateLimiter.applyFor("Trip:enterTripBatch", DEFAULT_COMMAND_TPS);

        if (!trainRepository.allIdsExist(command.getTripInfos().stream()
                .map(EnterTripBatchCommand.TripInfo::getTrainId)
                .collect(toImmutableList()))) {
            throw new MyException(TRAIN_IDS_NOT_ALL_EXISTS, "Train ids not all exists.");
        }

        if (stationRepository.allIdsExist(command.getTripInfos().stream()
                .map(EnterTripBatchCommand.TripInfo::getOriginStationId)
                .collect(toImmutableList()))) {
            throw new MyException(STATION_IDS_NOT_ALL_EXISTS, "Origin Station ids not all exists.");
        }

        if (stationRepository.allIdsExist(command.getTripInfos().stream()
                .map(EnterTripBatchCommand.TripInfo::getTerminalStationId)
                .collect(toImmutableList()))) {
            throw new MyException(STATION_IDS_NOT_ALL_EXISTS, "Terminal Station ids not all exists.");
        }

        // 车次落库
        List<TripPO> trips = command.getTripInfos().stream()
                .map(tripFactory::enterTripBatch)
                .collect(toImmutableList());

        tripRepository.saveBatch(trips, trips.size());

        // 初始化车次座位，将本列车的所有座位导入车次座位表
        List<String> tripIds = trips.stream().map(TripPO::getId).collect(toImmutableList());
        eventProducer.post(TRIP_CREATED, new TripCreatedEvent(tripIds));

        return EnterTripBatchResponse.builder()
                .tripIds(trips.stream().map(TripPO::getId).collect(toImmutableList()))
                .build();
    }

    @Override
    @Transactional
    public EnterTripStationsResponse enterTripStations(EnterTripStationsCommand command) {
        rateLimiter.applyFor("Trip:enterTripStations", DEFAULT_COMMAND_TPS);

        List<TripStationPO> tripStations = command.getTripStationInfos().stream()
                .map(tripStationInfo -> tripFactory.enterTripStations(command.getTripId(), tripStationInfo))
                .collect(toImmutableList());

        // 由于没有以图状结构存储高铁网络，无法校验两个站点之间是否存在路径

        tripStationRepository.saveBatch(tripStations);

        return EnterTripStationsResponse.builder()
                .tripStationIds(tripStations.stream().map(TripStationPO::getId).collect(toImmutableList()))
                .build();
    }

    @Override
    public void late(LateCommand command) {
        rateLimiter.applyFor("Trip:late", DEFAULT_COMMAND_TPS);

        tripRepository.updateStatus(command.getTripId(), BE_LATE);
    }

    @Override
    public void onSchedule(OnScheduleCommand command) {
        rateLimiter.applyFor("Trip:onSchedule", DEFAULT_COMMAND_TPS);

        tripRepository.updateStatus(command.getTripId(), ON_SCHEDULE);
    }

    @Override
    public void cancel(CancelCommand command) {
        rateLimiter.applyFor("Trip:cancel", DEFAULT_COMMAND_TPS);

        tripRepository.updateStatus(command.getTripId(), CANCEL);
    }

    @Override
    public void end(EndCommand command) {
        rateLimiter.applyFor("Trip:cancel", DEFAULT_COMMAND_TPS);

        tripRepository.updateStatus(command.getTripId(), END);
    }

}
