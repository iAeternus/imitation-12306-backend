package org.infinity.common.event;

import lombok.Data;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/10/28
 * @className OrderDeletedEvent
 * @desc
 */
@Data
public class OrderDeletedEvent {

    private String orderId;

    public OrderDeletedEvent(String orderId) {
        this.orderId = orderId;
    }

}
