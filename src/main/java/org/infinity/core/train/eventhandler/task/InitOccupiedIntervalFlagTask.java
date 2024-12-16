package org.infinity.core.train.eventhandler.task;

import lombok.RequiredArgsConstructor;
import org.infinity.core.common.model.task.OnetimeTask;
import org.infinity.core.train.infrastructure.repository.TripSeatRepository;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/3
 * @className InitOccupiedIntervalFlagTask
 * @desc
 */
@Component
@Deprecated
@RequiredArgsConstructor
public class InitOccupiedIntervalFlagTask implements OnetimeTask {

    private final TripSeatRepository tripSeatRepository;

    @Transactional
    public void run(String tripId, Integer stationCount) {

    }

}
