package org.infinity.core.trip.model.dto.command;

import jakarta.validation.constraints.NotBlank;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;
import org.infinity.core.common.domain.marker.Command;
import org.infinity.core.common.validation.id.station.StationId;
import org.infinity.core.common.validation.id.trip.TripId;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/26
 * @className FetchTripStationIdCommand
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class FetchTripStationIdCommand implements Command {

    @TripId
    @NotBlank
    String tripId;

    @NotBlank
    @StationId
    String stationId;

}
