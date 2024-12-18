package org.infinity.core.user.model.dto.command;

import jakarta.validation.constraints.NotBlank;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;
import org.infinity.core.common.domain.marker.Command;
import org.infinity.core.common.validation.mobile.Mobile;
import org.infinity.core.common.validation.password.Password;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/19
 * @className UserRegisterCommand
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class UserRegisterCommand implements Command {

    @NotBlank
    String nickname;

    @Mobile
    @NotBlank
    String mobile;

    @NotBlank
    @Password
    String password;

}
