package org.infinity.common.event;

import org.infinity.common.event.EventProducer;
import org.infinity.common.event.OrderCreatedEvent;
import org.infinity.common.event.OrderDeletedEvent;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/10/28
 * @className EventBusTest
 * @desc
 */
@SpringBootTest
public class EventBusTest {

    @Autowired
    private EventProducer eventProducer;

    @Test
    public void should_raise_order_created_event() {
        eventProducer.post("EVT001", new OrderCreatedEvent("ODR001"));
    }

    @Test
    public void should_raise_order_deleted_event() {
        eventProducer.post("EVT002", new OrderDeletedEvent("ODR001"));
    }

}
