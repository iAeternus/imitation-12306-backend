package org.infinity.core.train.model.event;

import lombok.Data;
import org.infinity.common.event.Event;

import java.util.List;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/3
 * @className TripCreatedEvent
 * @desc
 */
@Data
public class TripCreatedEvent implements Event {

    List<String> tripIds;

    public TripCreatedEvent(List<String> tripIds) {
        this.tripIds = tripIds;
    }
}
