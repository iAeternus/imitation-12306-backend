package org.infinity.common.event;

import com.google.common.eventbus.AsyncEventBus;
import com.google.common.eventbus.EventBus;
import jakarta.annotation.PostConstruct;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Component;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import static org.infinity.common.taskexcutor.TaskExecutorConfiguration.consumeEventTaskExecutor;
import static org.infinity.core.common.utils.ObjectUtils.defaultIfNull;
import static org.infinity.core.common.utils.ValidationUtils.isBlank;
import static org.infinity.core.common.utils.ValidationUtils.isNull;

@Slf4j
@Component
@SuppressWarnings({"rawtypes"})
public class EventHub {

    private final Map<String, AsyncEventBus> eventBusMap = new ConcurrentHashMap<>();

    @Resource
    private ApplicationContext applicationContext;

    @PostConstruct
    public void onStart() {
        this.loadEventHandler();
    }

    public void loadEventHandler() {
        Map<String, EventHandler> eventHandlerMap = applicationContext.getBeansOfType(EventHandler.class);
        for (EventHandler eventHandler : eventHandlerMap.values()) {
            register(eventHandler);
        }
    }

    private void register(EventHandler eventHandler) {
        EventConsume eventConsume = eventHandler.getClass().getAnnotation(EventConsume.class);
        if (isNull(eventConsume) || isBlank(eventConsume.topic())) {
            log.error("EventHandler[ {} ]没有配置 topic ，注册失败", eventHandler.getClass().getSimpleName());
            return;
        }

        String topic = eventConsume.topic();
        AsyncEventBus eventBus = eventBusMap.get(topic);
        if (isNull(eventBus)) {
            AsyncEventBus asyncEventBus = new AsyncEventBus(topic, consumeEventTaskExecutor(topic));
            eventBus = defaultIfNull(eventBusMap.putIfAbsent(topic, asyncEventBus), asyncEventBus);
        }
        eventBus.register(eventHandler);
    }

    public EventBus getEventBus(String identifier) {
        return eventBusMap.get(identifier);
    }

}