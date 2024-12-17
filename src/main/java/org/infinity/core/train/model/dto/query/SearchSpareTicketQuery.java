package org.infinity.core.train.model.dto.query;

import jakarta.validation.constraints.NotBlank;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;
import org.infinity.core.common.model.marker.Query;
import org.infinity.core.common.validation.id.trip.TripId;
import org.infinity.core.common.validation.id.tripstation.TripStationId;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/17
 * @className SearchSpareTicketQuery
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class SearchSpareTicketQuery implements Query {

    @TripId
    @NotBlank
    String tripId;

    @NotBlank
    @TripStationId
    String sourceTripStationId;

    @NotBlank
    @TripStationId
    String dstTripStationId;

}
