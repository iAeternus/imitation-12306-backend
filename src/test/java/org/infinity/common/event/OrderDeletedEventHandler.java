package org.infinity.common.event;

import org.springframework.stereotype.Component;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/10/28
 * @className OrderDeletedEventHandler
 * @desc
 */
@Component
@EventConsume(identifier = "EVT002")
public class OrderDeletedEventHandler implements EventHandler<OrderDeletedEvent> {
    @Override
    public boolean handle(OrderDeletedEvent data) {
        System.out.println("Delete order: " + data.getOrderId());
        return true;
    }
}
