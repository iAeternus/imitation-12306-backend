package org.infinity.common.event;

import org.springframework.stereotype.Component;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/10/28
 * @className OrderCreatedEventHandler
 * @desc
 */
@Component
@EventConsume(identifier = "EVT001")
public class OrderCreatedEventHandler implements EventHandler<OrderCreatedEvent> {
    @Override
    public boolean handle(OrderCreatedEvent data) {
        System.out.println("Create order: " + data.getOrderId());
        return true;
    }
}
