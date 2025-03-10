package org.infinity.common.event;

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
class EventBusTest {

    @Autowired
    private EventProducer eventProducer;

    @Test
    void should_raise_something_created_event() {
        eventProducer.post("EVT001", new SomethingCreatedEvent("STH001"));
    }

    @Test
    void should_raise_something_deleted_event() {
        eventProducer.post("EVT002", new SomethingDeletedEvent("STH001"));
    }

}
