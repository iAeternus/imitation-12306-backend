package org.infinity.core.user.model.dto.command;

import jakarta.validation.constraints.NotBlank;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;
import org.infinity.core.common.model.marker.Command;
import org.infinity.core.common.validation.id.user.UserId;
import org.infinity.core.common.validation.mobile.Mobile;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/16
 * @className ChangeMobileCommand
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class ChangeMobileCommand implements Command {

    @UserId
    @NotBlank
    String userId;

    @Mobile
    @NotBlank
    String newMobile;

}
