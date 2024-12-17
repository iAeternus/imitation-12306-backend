package org.infinity.core.order.model.dto.command;

import jakarta.validation.constraints.NotBlank;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;
import org.infinity.core.common.model.marker.Command;
import org.infinity.core.common.validation.id.order.OrderId;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/17
 * @className CheckInCommand
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class CheckInCommand implements Command {

    @OrderId
    @NotBlank
    String orderId;

}
