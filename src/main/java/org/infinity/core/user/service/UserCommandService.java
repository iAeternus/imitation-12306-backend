package org.infinity.core.user.service;

import org.infinity.core.user.model.dto.command.UserLoginCommand;
import org.infinity.core.user.model.dto.command.UserRegisterCommand;
import org.infinity.core.user.model.dto.response.JwtTokenResponse;
import org.infinity.core.user.model.dto.response.UserRegisterResponse;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/19
 * @className UserCommandService
 * @desc
 */
public interface UserCommandService {
    UserRegisterResponse register(UserRegisterCommand command);

    JwtTokenResponse login(UserLoginCommand command);
}
