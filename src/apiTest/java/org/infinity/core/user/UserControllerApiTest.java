package org.infinity.core.user;

import org.infinity.BaseApiTest;
import org.infinity.core.user.model.RoleEnum;
import org.infinity.core.user.model.dto.command.RealNameVerifyCommand;
import org.infinity.core.user.model.dto.command.StuVerifyCommand;
import org.infinity.core.user.model.dto.command.UserLoginCommand;
import org.infinity.core.user.model.dto.command.UserRegisterCommand;
import org.infinity.core.user.model.dto.response.JwtTokenResponse;
import org.infinity.core.user.model.dto.response.UserProfileResponse;
import org.infinity.core.user.model.dto.response.UserRegisterResponse;
import org.infinity.core.user.model.po.UserPO;
import org.junit.jupiter.api.Test;

import static org.infinity.core.common.exception.ErrorCodeEnum.AUTHENTICATION_FAILED;
import static org.infinity.core.common.exception.ErrorCodeEnum.MOBILE_DUPLICATED;
import static org.infinity.core.user.model.RoleEnum.STUDENT;
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
        UserProfileResponse response1 = UserApi.fetchMyProfile(response.getToken(), response.getUserId());
        assertNotNull(response1);
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

    @Test
    public void should_student_verify() {
        // Given
        JwtTokenResponse operator = setupApi.registerWithLogin();

        StuVerifyCommand command = StuVerifyCommand.builder()
                .userId(operator.getUserId())
                .age(16)
                .build();

        // When
        UserApi.stuVerify(operator.getToken(), command);

        // Then
        UserPO user = userRepository.cachedById(command.getUserId());
        assertEquals(STUDENT, user.getRole());
    }

    @Test
    public void should_real_name_verify() {
        // Given
        JwtTokenResponse operator = setupApi.registerWithLogin();

        String realName = "吴子维";
        String idCard = "420202200407231213";

        RealNameVerifyCommand command = RealNameVerifyCommand.builder()
                .userId(operator.getUserId())
                .realName(realName)
                .idType((short) 0)
                .idCard(idCard)
                .build();

        // When
        UserApi.realNameVerify(operator.getToken(), command);

        // Then
        UserPO user = userRepository.cachedById(command.getUserId());
        assertEquals(realName, user.getRealName());
        assertEquals(idCard, user.getIdCard());
    }

}
