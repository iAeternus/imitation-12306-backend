package org.infinity.core.train.eventhandler.handler;

import lombok.RequiredArgsConstructor;
import org.infinity.common.event.EventConsume;
import org.infinity.common.event.EventHandler;
import org.infinity.core.train.eventhandler.task.InitOccupiedIntervalFlagTask;
import org.infinity.core.train.model.event.TripStationsEnteredEvent;
import org.springframework.core.task.TaskExecutor;
import org.springframework.stereotype.Component;

import static org.infinity.core.common.constants.I12306EventIdConstants.TRIP_STATIONS_ENTERED;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/3
 * @className TripStationsEnteredEventHandler
 * @desc
 */
@Component
@Deprecated
@RequiredArgsConstructor
@EventConsume(topic = TRIP_STATIONS_ENTERED)
public class TripStationsEnteredEventHandler implements EventHandler<TripStationsEnteredEvent> {

    private final TaskExecutor taskExecutor;
    private final InitOccupiedIntervalFlagTask initOccupiedIntervalFlagTask;

    @Override
    public boolean handle(TripStationsEnteredEvent event) {
        taskExecutor.execute(() -> initOccupiedIntervalFlagTask.run(event.getTripId(), event.getStationCount()));
        return true;
    }
}
