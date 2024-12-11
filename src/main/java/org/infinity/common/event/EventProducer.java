package org.infinity.common.event;

import com.google.common.eventbus.EventBus;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

@Slf4j
@Component
public class EventProducer {

    @Resource
    private EventHub eventHub;

    public <T> void post(String topic, T data) {
        EventBus eventBus = eventHub.getEventBus(topic);
        if (eventBus == null) {
            log.error("topic [ {} ] 没有事件监听者", topic);
            return;
        }
        eventBus.post(data);
    }

}