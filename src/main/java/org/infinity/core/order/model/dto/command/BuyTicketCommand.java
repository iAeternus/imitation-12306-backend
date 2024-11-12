package org.infinity.core.order.model.dto.command;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;
import org.infinity.core.common.model.marker.Command;
import org.infinity.core.common.validation.id.trip.TripId;
import org.infinity.core.common.validation.id.user.UserId;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className BuyTicketCommand
 * @desc
 */
@Data
public class BuyTicketCommand implements Command {

    @UserId
    @NotBlank
    private String userId;

    @TripId
    @NotBlank
    private String tripId;

    @NotNull
    @Min(value = 0)
    @Max(value = 2)
    private Integer seatLevel;

}
