package org.infinity.core.user.service;

import jakarta.servlet.http.HttpServletRequest;
import org.infinity.core.user.model.dto.command.*;
import org.infinity.core.user.model.dto.response.ChangeMobileResponse;
import org.infinity.core.user.model.dto.response.JwtTokenResponse;
import org.infinity.core.user.model.dto.response.LogoutResponse;
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

    LogoutResponse logout(LogoutCommand command);

    void stuVerify(StuVerifyCommand command);

    void realNameVerify(RealNameVerifyCommand command);

    ChangeMobileResponse changeMobile(ChangeMobileCommand command);
}
