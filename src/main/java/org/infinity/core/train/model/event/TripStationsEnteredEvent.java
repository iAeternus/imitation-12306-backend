package org.infinity.core.train.model.event;

import lombok.Data;
import org.infinity.common.event.Event;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/3
 * @className TripStationsEnteredEvent
 * @desc
 */
@Data
public class TripStationsEnteredEvent implements Event {

    private String tripId;
    private Integer stationCount;

    public TripStationsEnteredEvent(String tripId, Integer stationCount) {
        this.tripId = tripId;
        this.stationCount = stationCount;
    }
}
