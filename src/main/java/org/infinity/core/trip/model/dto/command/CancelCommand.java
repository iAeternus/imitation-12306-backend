package org.infinity.core.trip.model.dto.command;

import jakarta.validation.constraints.NotBlank;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;
import org.infinity.core.common.model.marker.Command;
import org.infinity.core.common.validation.id.trip.TripId;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/17
 * @className CancelCommand
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class CancelCommand implements Command {

    @TripId
    @NotBlank
    String tripId;

}
