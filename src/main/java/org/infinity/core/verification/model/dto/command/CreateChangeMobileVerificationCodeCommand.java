package org.infinity.core.verification.model.dto.command;

import jakarta.validation.constraints.NotBlank;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;
import org.infinity.core.common.domain.marker.Command;
import org.infinity.core.common.validation.id.user.UserId;
import org.infinity.core.common.validation.mobile.Mobile;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/23
 * @className CreateChangeMobileVerificationCodeCommand
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class CreateChangeMobileVerificationCodeCommand implements Command {

    @UserId
    @NotBlank
    String userId;

    @Mobile
    @NotBlank
    String mobile;

}
