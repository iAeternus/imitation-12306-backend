package org.infinity.core.user.service.impl;

import lombok.RequiredArgsConstructor;
import org.infinity.common.ratelimit.RateLimiter;
import org.infinity.core.common.exception.MyException;
import org.infinity.core.user.infrastructure.repository.UserRepository;
import org.infinity.core.user.model.dto.response.UserProfileResponse;
import org.infinity.core.user.model.po.UserPO;
import org.infinity.core.user.service.UserQueryService;
import org.springframework.stereotype.Service;

import static org.infinity.core.common.constants.I12306Constants.DEFAULT_QUERY_TPS;
import static org.infinity.core.common.exception.ErrorCodeEnum.USER_NOT_FOUND;
import static org.infinity.core.common.utils.ValidationUtils.isNull;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/19
 * @className UserQueryServiceImpl
 * @desc
 */
@Service
@RequiredArgsConstructor
public class UserQueryServiceImpl implements UserQueryService {

    private final UserRepository userRepository;
    private final RateLimiter rateLimiter;

    @Override
    public UserProfileResponse fetchMyProfile(String userId) {
        rateLimiter.applyFor("User:fetchMyProfile", DEFAULT_QUERY_TPS);

        UserPO user = userRepository.cachedById(userId);
        if (isNull(user)) {
            throw new MyException(USER_NOT_FOUND, "User not found.", "userId", userId);
        }

        return UserProfileResponse.builder()
                .nickname(user.getNickname())
                .avatar(user.getAvatar())
                .realName(user.getRealName())
                .idType(user.getIdType())
                .idCard(user.getIdCard())
                .mobile(user.getMobile())
                .role(user.getRole())
                .status(user.getStatus())
                .build();
    }
}
