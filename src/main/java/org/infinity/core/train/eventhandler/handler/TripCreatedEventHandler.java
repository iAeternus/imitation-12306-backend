package org.infinity.core.train.eventhandler.handler;

import lombok.RequiredArgsConstructor;
import org.infinity.common.event.EventConsume;
import org.infinity.common.event.EventHandler;
import org.infinity.core.train.eventhandler.task.InitTripSeatTask;
import org.infinity.core.train.model.event.TripCreatedEvent;
import org.springframework.core.task.TaskExecutor;
import org.springframework.stereotype.Component;

import static org.infinity.core.common.constants.I12306EventIdConstants.TRIP_CREATED;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/3
 * @className TripCreatedEventHandler
 * @desc
 */
@Component
@RequiredArgsConstructor
@EventConsume(topic = TRIP_CREATED)
public class TripCreatedEventHandler implements EventHandler<TripCreatedEvent> {

    private final TaskExecutor taskExecutor;
    private final InitTripSeatTask initTripSeatTask;

    @Override
    public boolean handle(TripCreatedEvent event) {
        taskExecutor.execute(() -> initTripSeatTask.run(event.getTripIds()));
        return true;
    }
}
