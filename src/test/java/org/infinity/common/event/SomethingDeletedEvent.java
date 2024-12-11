package org.infinity.common.event;

import lombok.Data;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/10/28
 * @className SomethingDeletedEvent
 * @desc
 */
@Data
public class SomethingDeletedEvent implements Event {

    private String somethingId;

    public SomethingDeletedEvent(String somethingId) {
        this.somethingId = somethingId;
    }

}
