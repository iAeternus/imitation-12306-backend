package org.infinity.common.event;

import com.google.common.eventbus.Subscribe;

public interface EventHandler<T> {

    @Subscribe
    boolean handle(T data);

}