package org.infinity.core.train.eventhandler.task;

import lombok.RequiredArgsConstructor;
import org.infinity.core.common.model.task.OnetimeTask;
import org.infinity.core.train.infrastructure.repository.TripSeatRepository;
import org.infinity.core.train.model.po.TripSeatPO;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/3
 * @className InitOccupiedIntervalFlagTask
 * @desc
 */
@Component
@RequiredArgsConstructor
public class InitOccupiedIntervalFlagTask implements OnetimeTask {

    private final TripSeatRepository tripSeatRepository;

    @Transactional
    public void run(String tripId, Integer stationCount) {
        List<TripSeatPO> tripSeats = tripSeatRepository.listByTripId(tripId);
        tripSeats.forEach(tripSeat -> tripSeat.initOccupiedIntervalFlag(stationCount));
        tripSeatRepository.updateBatchById(tripSeats);
    }

}
