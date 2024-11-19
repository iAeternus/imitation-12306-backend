package org.infinity.core.user.model.dto.command;

import jakarta.validation.constraints.NotBlank;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;
import org.infinity.core.common.model.marker.Command;
import org.infinity.core.common.validation.mobile.Mobile;
import org.infinity.core.common.validation.password.Password;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/10/26
 * @className UserLoginCommand
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class UserLoginCommand implements Command {

    @Mobile
    @NotBlank
    String mobile;

    @NotBlank
    @Password
    String password;

}
