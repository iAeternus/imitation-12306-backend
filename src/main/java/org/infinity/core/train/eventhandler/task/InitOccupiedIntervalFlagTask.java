package org.infinity.core.train.eventhandler.task;

import lombok.RequiredArgsConstructor;
import org.infinity.core.common.model.intervalset.LongIntervalSeatHandler;
import org.infinity.core.common.model.task.OnetimeTask;
import org.infinity.core.train.infrastructure.repository.TripSeatRepository;
import org.infinity.core.train.model.po.TripSeatPO;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

import static org.infinity.core.common.model.intervalset.LongIntervalSeatHandler.initOccupiedInterval;

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
