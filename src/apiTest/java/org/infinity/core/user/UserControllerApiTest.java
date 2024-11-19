package org.infinity.core.user;

import org.infinity.BaseApiTest;
import org.infinity.core.user.model.dto.command.UserLoginCommand;
import org.infinity.core.user.model.dto.command.UserRegisterCommand;
import org.infinity.core.user.model.dto.response.JwtTokenResponse;
import org.infinity.core.user.model.dto.response.UserRegisterResponse;
import org.infinity.core.user.model.po.UserPO;
import org.junit.jupiter.api.Test;

import static org.infinity.core.common.exception.ErrorCodeEnum.AUTHENTICATION_FAILED;
import static org.infinity.core.common.exception.ErrorCodeEnum.MOBILE_DUPLICATED;
import static org.infinity.utils.RandomTestFixture.*;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/19
 * @className UserControllerApiTest
 * @desc
 */
public class UserControllerApiTest extends BaseApiTest {

    @Test
    public void user_should_register() {
        // Given
        UserRegisterCommand command = UserRegisterCommand.builder()
                .nickname(rNickname())
                .mobile(rMobile())
                .password(rPassword())
                .build();

        // When
        UserRegisterResponse response = UserApi.register(command);

        // Then
        UserPO user = userRepository.cachedById(response.getUserId());

        assertNotNull(user);
        assertEquals(command.getMobile(), user.getMobile());
        //
        // String encodePassword = passwordEncoder.encode(command.getPassword());
        //
        // assertEquals(encodePassword, user.getPassword());
    }

    @Test
    public void should_fail_to_register_if_mobile_duplicated() {
        // Given
        String mobile = rMobile();
        setupApi.register(mobile, rPassword());

        UserRegisterCommand command = UserRegisterCommand.builder()
                .nickname(rNickname())
                .mobile(mobile)
                .password(rPassword())
                .build();

        // When & Then
        assertError(() -> UserApi.registerRaw(command), MOBILE_DUPLICATED);
    }

    @Test
    public void user_should_login() {
        // Given
        String rawPassword = rPassword();
        UserRegisterResponse operator = setupApi.register(rMobile(), rawPassword);
        UserPO user = userRepository.cachedById(operator.getUserId());

        UserLoginCommand command = UserLoginCommand.builder()
                .mobile(user.getMobile())
                .password(rawPassword)
                .build();

        // When
        JwtTokenResponse response = UserApi.login(command);

        // Then
        UserApi.fetchMyProfileRaw(response.getToken(), response.getUserId());
    }

    @Test
    public void should_fail_to_login_if_password_incorrect() {
        // Given
        UserRegisterResponse operator = setupApi.register();

        UserPO user = userRepository.cachedById(operator.getUserId());

        UserLoginCommand command = UserLoginCommand.builder()
                .mobile(user.getMobile())
                .password(rPassword())
                .build();

        // When & Then
        assertError(() -> UserApi.loginRaw(command), AUTHENTICATION_FAILED);
    }

}
