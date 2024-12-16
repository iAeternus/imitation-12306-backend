package org.infinity.core.order.model.dto.command;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;
import org.infinity.core.common.model.marker.Command;
import org.infinity.core.common.validation.id.trip.TripId;
import org.infinity.core.common.validation.id.tripstation.TripStationId;
import org.infinity.core.common.validation.id.user.UserId;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className CreateOrderCommand
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class CreateOrderCommand implements Command {

    @UserId
    @NotBlank
    String userId;

    @TripId
    @NotBlank
    String tripId;

    @NotNull
    @Min(value = 0)
    @Max(value = 1)
    Short seatLevel;

    @NotBlank
    @TripStationId
    String sourceTripStationId;

    @NotBlank
    @TripStationId
    String dstTripStationId;

}
