package org.infinity.core.user.service.impl;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.infinity.common.password.MyPasswordEncoder;
import org.infinity.common.ratelimit.RateLimiter;
import org.infinity.common.security.jwt.JwtService;
import org.infinity.core.common.exception.MyException;
import org.infinity.core.common.utils.ValidationUtils;
import org.infinity.core.user.infrastructure.repository.UserRepository;
import org.infinity.core.user.model.RoleEnum;
import org.infinity.core.user.model.StatusEnum;
import org.infinity.core.user.model.dto.command.*;
import org.infinity.core.user.model.dto.response.ChangeMobileResponse;
import org.infinity.core.user.model.dto.response.JwtTokenResponse;
import org.infinity.core.user.model.dto.response.LogoutResponse;
import org.infinity.core.user.model.dto.response.UserRegisterResponse;
import org.infinity.core.user.model.po.UserPO;
import org.infinity.core.user.service.UserCommandService;
import org.infinity.core.verification.infrastructure.checker.VerificationCodeChecker;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import static org.infinity.core.common.constants.I12306Constants.DEFAULT_COMMAND_TPS;
import static org.infinity.core.common.exception.ErrorCodeEnum.*;
import static org.infinity.core.common.utils.MapUtils.mapOf;
import static org.infinity.core.common.utils.ValidationUtils.isNull;
import static org.infinity.core.user.model.IdTypeEnum.HONG_KONG_AND_MACAO_PASS;
import static org.infinity.core.user.model.RoleEnum.STUDENT;
import static org.infinity.core.verification.model.VerificationCodeTypeEnum.CHANGE_MOBILE;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/19
 * @className UserCommandServiceImpl
 * @desc
 */
@Slf4j
@Service
@RequiredArgsConstructor
public class UserCommandServiceImpl implements UserCommandService {

    private final UserRepository userRepository;
    private final RateLimiter rateLimiter;
    private final MyPasswordEncoder passwordEncoder;
    private final JwtService jwtService;
    private final VerificationCodeChecker verificationCodeChecker;

    @Override
    @Transactional
    public UserRegisterResponse register(UserRegisterCommand command) {
        rateLimiter.applyFor("User:register", DEFAULT_COMMAND_TPS);

        if (userRepository.existsByMobile(command.getMobile())) {
            throw new MyException(MOBILE_DUPLICATED, "Mobile must not be duplicated.", "mobile", command.getMobile());
        }

        String encodePassword = passwordEncoder.encode(command.getPassword());
        UserPO user = UserPO.humanUser(command.getNickname(), command.getMobile(), encodePassword);
        user.setRole(RoleEnum.ADULT); // 默认成人
        user.setStatus(StatusEnum.NO_REAL_NAME_AUTHENTICATION); // 默认未实名认证
        userRepository.insert(user);

        return UserRegisterResponse.builder()
                .userId(user.getId())
                .build();
    }

    @Override
    @Transactional
    public JwtTokenResponse login(UserLoginCommand command) {
        rateLimiter.applyFor("User:login", DEFAULT_COMMAND_TPS);

        UserPO user = userRepository.byMobile(command.getMobile());

        if (isNull(user)) {
            throw new MyException(ACCOUNT_NOT_EXIST, "Account does not exist.", "mobile", command.getMobile());
        }

        if (!passwordEncoder.matches(command.getPassword(), user.getPassword())) {
            throw MyException.authenticationException();
        }

        String token = jwtService.generateJwt(user.getId());
        return JwtTokenResponse.builder()
                .userId(user.getId())
                .token(token)
                .build();
    }

    @Override
    public LogoutResponse logout(LogoutCommand command) {
        rateLimiter.applyFor("User:logout", DEFAULT_COMMAND_TPS);

        log.info("User[{}] Logout success.", command.getUserId());
        return LogoutResponse.builder().isSuccess(true).build();
    }

    @Override
    @Transactional
    public void stuVerify(StuVerifyCommand command) {
        rateLimiter.applyFor("User:stuVerify", DEFAULT_COMMAND_TPS);

        if (command.getAge() > 18) {
            throw new MyException(AGE_NOT_REQUIRE, "Student authentication was unsuccessful.",
                    mapOf("userId", command.getUserId(), "age", command.getAge()));
        }

        userRepository.updateRoleById(command.getUserId(), STUDENT);

    }

    @Override
    public void realNameVerify(RealNameVerifyCommand command) {
        rateLimiter.applyFor("User:realNameVerify", DEFAULT_COMMAND_TPS);

        if (ValidationUtils.equals(command.getIdType(), HONG_KONG_AND_MACAO_PASS.getKey())) {
            throw new MyException(NOT_SUPPORTED_YET, "Hong Kong And Macao Pass are not suppoerted yet.");
        }

        // TODO 这里需要调用第三方实名认证API

        userRepository.realNameVerify(command.getUserId(), command.getRealName(), command.getIdType(), command.getIdCard());
    }

    @Override
    public ChangeMobileResponse changeMobile(ChangeMobileCommand command) {
        rateLimiter.applyFor("User:changeMobile", DEFAULT_COMMAND_TPS);

        verificationCodeChecker.check(command.getNewMobile(), command.getVerificationCode(), CHANGE_MOBILE);

        UserPO user = userRepository.cachedById(command.getUserId());
        if (user.getMobile().equals(command.getNewMobile())) {
            throw new MyException(OLD_AND_NEW_MOBILE_CANNOT_EQUALS, "The old and new mobile should not be the same.",
                    mapOf("userId", command.getUserId()));
        }

        userRepository.changeMobile(command.getUserId(), command.getNewMobile());

        return ChangeMobileResponse.builder()
                .oldMobile(user.getMobile())
                .build();
    }
}
