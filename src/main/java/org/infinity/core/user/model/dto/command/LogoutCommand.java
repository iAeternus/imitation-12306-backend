package org.infinity.core.user.model.dto.command;

import jakarta.validation.constraints.NotBlank;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;
import org.infinity.core.common.domain.marker.Command;
import org.infinity.core.common.validation.id.user.UserId;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/18
 * @className LogoutCommand
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class LogoutCommand implements Command {

    @UserId
    @NotBlank
    String userId;

}
