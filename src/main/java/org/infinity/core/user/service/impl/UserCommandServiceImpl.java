package org.infinity.core.user.service.impl;

import lombok.RequiredArgsConstructor;
import org.infinity.common.password.MyPasswordEncoder;
import org.infinity.common.ratelimit.RateLimiter;
import org.infinity.common.security.jwt.JwtService;
import org.infinity.core.common.exception.MyException;
import org.infinity.core.user.infrastructure.repository.UserRepository;
import org.infinity.core.user.model.RoleEnum;
import org.infinity.core.user.model.StatusEnum;
import org.infinity.core.user.model.dto.command.UserLoginCommand;
import org.infinity.core.user.model.dto.command.UserRegisterCommand;
import org.infinity.core.user.model.dto.response.JwtTokenResponse;
import org.infinity.core.user.model.dto.response.UserRegisterResponse;
import org.infinity.core.user.model.po.UserPO;
import org.infinity.core.user.service.UserCommandService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import static org.infinity.core.common.exception.ErrorCodeEnum.ACCOUNT_NOT_EXIST;
import static org.infinity.core.common.exception.ErrorCodeEnum.MOBILE_DUPLICATED;
import static org.infinity.core.common.utils.ValidationUtils.isNull;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/19
 * @className UserCommandServiceImpl
 * @desc
 */
@Service
@RequiredArgsConstructor
public class UserCommandServiceImpl implements UserCommandService {

    private final UserRepository userRepository;
    private final RateLimiter rateLimiter;
    private final MyPasswordEncoder passwordEncoder;
    private final JwtService jwtService;

    @Override
    @Transactional
    public UserRegisterResponse register(UserRegisterCommand command) {
        rateLimiter.applyFor("User:register", 10);

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
        rateLimiter.applyFor("User:login", 10);

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
}
