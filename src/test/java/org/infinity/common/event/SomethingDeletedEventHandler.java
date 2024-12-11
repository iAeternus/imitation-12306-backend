package org.infinity.common.event;

import org.springframework.stereotype.Component;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/10/28
 * @className SomethingDeletedEventHandler
 * @desc
 */
@Component
@EventConsume(topic = "EVT002")
public class SomethingDeletedEventHandler implements EventHandler<SomethingDeletedEvent> {
    @Override
    public boolean handle(SomethingDeletedEvent data) {
        System.out.println("Delete something: " + data.getSomethingId());
        return true;
    }
}
