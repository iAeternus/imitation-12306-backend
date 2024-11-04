package org.infinity.common.event;

import lombok.Data;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/10/28
 * @className OrderCreatedEvent
 * @desc
 */
@Data
public class OrderCreatedEvent {

    String orderId;

    public OrderCreatedEvent(String orderId) {
        this.orderId = orderId;
    }

}
