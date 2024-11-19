package org.infinity.utils;

import org.infinity.core.user.UserApi;
import org.infinity.core.user.model.dto.command.UserLoginCommand;
import org.infinity.core.user.model.dto.command.UserRegisterCommand;
import org.infinity.core.user.model.dto.response.JwtTokenResponse;
import org.infinity.core.user.model.dto.response.UserRegisterResponse;
import org.springframework.stereotype.Component;

import static org.infinity.utils.RandomTestFixture.*;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className SetupApi
 * @desc
 */
@Component
public class SetupApi {

    public UserRegisterResponse register(String nickname, String mobile, String password) {
        UserRegisterCommand command = UserRegisterCommand.builder()
                .nickname(nickname)
                .mobile(mobile)
                .password(password)
                .build();
        return UserApi.register(command);
    }

    public UserRegisterResponse register(String mobile, String password) {
        return register(rNickname(), mobile, password);
    }

    public UserRegisterResponse register() {
        return register(rNickname(), rMobile(), rPassword());
    }

    public JwtTokenResponse registerWithLogin(String mobile, String password) {
        UserRegisterResponse response = register(mobile, password);
        UserLoginCommand command = UserLoginCommand.builder()
                .mobile(mobile)
                .password(password)
                .build();
        return UserApi.login(command);
    }

    public JwtTokenResponse registerWithLogin() {
        return registerWithLogin(rMobile(), rPassword());
    }

}
