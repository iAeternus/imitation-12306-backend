package org.infinity.common.event;

import lombok.Data;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/10/28
 * @className SomethingCreatedEvent
 * @desc
 */
@Data
public class SomethingCreatedEvent implements Event {

    String orderId;

    public SomethingCreatedEvent(String orderId) {
        this.orderId = orderId;
    }

}
