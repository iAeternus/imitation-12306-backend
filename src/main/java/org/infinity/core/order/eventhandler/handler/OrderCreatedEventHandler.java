package org.infinity.core.order.eventhandler.handler;

import lombok.RequiredArgsConstructor;
import org.infinity.common.event.EventConsume;
import org.infinity.common.event.EventHandler;
import org.infinity.core.order.eventhandler.task.OrderCreatedTask;
import org.infinity.core.order.model.event.OrderCreatedEvent;
import org.springframework.core.task.TaskExecutor;
import org.springframework.stereotype.Component;

import static org.infinity.core.common.constants.I12306EventIdConstants.ORDER_CREATED;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/5
 * @className OrderCreatedEventHandler
 * @desc
 */
@Component
@RequiredArgsConstructor
@EventConsume(topic = ORDER_CREATED)
public class OrderCreatedEventHandler implements EventHandler<OrderCreatedEvent> {

    private final TaskExecutor taskExecutor;
    private final OrderCreatedTask orderCreatedTask;

    @Override
    public boolean handle(OrderCreatedEvent data) {
        taskExecutor.execute(orderCreatedTask::run);
        taskExecutor.execute(orderCreatedTask::run);
        taskExecutor.execute(orderCreatedTask::run);
        taskExecutor.execute(orderCreatedTask::run);
        return true;
    }
}
