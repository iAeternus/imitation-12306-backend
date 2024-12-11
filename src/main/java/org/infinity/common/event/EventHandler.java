package org.infinity.common.event;

import com.google.common.eventbus.Subscribe;

public interface EventHandler<E> {

    @Subscribe
    boolean handle(E event);

}