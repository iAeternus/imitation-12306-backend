package org.infinity.core.train.eventhandler.task;

import lombok.RequiredArgsConstructor;
import org.infinity.core.common.model.intervalset.LongIntervalSeatHandler;
import org.infinity.core.common.model.task.OnetimeTask;
import org.infinity.core.train.infrastructure.repository.CarriageRepository;
import org.infinity.core.train.infrastructure.repository.SeatRepository;
import org.infinity.core.train.infrastructure.repository.TripRepository;
import org.infinity.core.train.infrastructure.repository.TripSeatRepository;
import org.infinity.core.train.model.po.CarriagePO;
import org.infinity.core.train.model.po.SeatPO;
import org.infinity.core.train.model.po.TripPO;
import org.infinity.core.train.model.po.TripSeatPO;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import static com.google.common.collect.ImmutableList.toImmutableList;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/3
 * @className InitTripSeatTask
 * @desc 初始化车次座位
 */
@Component
@RequiredArgsConstructor
public class InitTripSeatTask implements OnetimeTask {

    private final TripRepository tripRepository;
    private final CarriageRepository carriageRepository;
    private final SeatRepository seatRepository;
    private final TripSeatRepository tripSeatRepository;

    public void run(List<String> tripIds) {
        List<TripPO> trips = tripRepository.listByIds(tripIds);
        List<String> trainIds = trips.stream().map(TripPO::getTrainId).collect(toImmutableList());
        Map<String, List<CarriagePO>> trainCarriages = carriageRepository.listByTrainIds(trainIds);
        Map<String, List<String>> trainCarriageIds = trainCarriages.entrySet().stream()
                .collect(Collectors.toMap(Map.Entry::getKey, entry -> entry.getValue().stream()
                        .map(CarriagePO::getId)
                        .collect(toImmutableList())));
        Map<String, List<SeatPO>> trainSeats = seatRepository.listByTrainIds(trainCarriageIds);

        List<TripSeatPO> tripSeats = trips.stream()
                .flatMap(trip -> trainSeats.get(trip.getTrainId()).stream()
                        .map(seat -> new TripSeatPO(trip.getId(), seat.getId())))
                .collect(toImmutableList());
        tripSeatRepository.insertBatch(tripSeats);
    }

}
