package org.infinity.common.event;

import org.springframework.stereotype.Component;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/10/28
 * @className SomethingCreatedEventHandler
 * @desc
 */
@Component
@EventConsume(identifier = "EVT001")
public class SomethingCreatedEventHandler implements EventHandler<SomethingCreatedEvent> {
    @Override
    public boolean handle(SomethingCreatedEvent data) {
        System.out.println("Create something: " + data.getOrderId());
        return true;
    }
}
