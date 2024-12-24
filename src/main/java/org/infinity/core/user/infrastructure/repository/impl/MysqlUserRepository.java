package org.infinity.core.user.infrastructure.repository.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import org.infinity.core.common.exception.MyException;
import org.infinity.core.user.infrastructure.mapper.UserMapper;
import org.infinity.core.user.infrastructure.repository.UserRepository;
import org.infinity.core.user.infrastructure.repository.cache.MysqlUserCachedRepository;
import org.infinity.core.user.model.RoleEnum;
import org.infinity.core.user.model.po.UserPO;
import org.springframework.stereotype.Repository;

import static org.infinity.core.common.exception.ErrorCodeEnum.USER_NOT_FOUND;
import static org.infinity.core.common.utils.MapUtils.mapOf;
import static org.infinity.core.common.utils.ValidationUtils.*;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/8
 * @className MysqlUserRepository
 * @desc
 */
@Repository
@RequiredArgsConstructor
public class MysqlUserRepository extends ServiceImpl<UserMapper, UserPO> implements UserRepository {

    private final MysqlUserCachedRepository userCachedRepository;

    @Override
    public UserPO cachedById(String userId) {
        requireNonBlank(userId, "User ID must not be blank.");

        UserPO user = userCachedRepository.cachedById(userId);
        if (isNull(user)) {
            throw new MyException(USER_NOT_FOUND, "User not found.", mapOf("userId", userId));
        }
        return user;
    }

    @Override
    public boolean existsByMobile(String mobile) {
        requireNonBlank(mobile, "Mobile must not be blank.");

        return lambdaQuery().eq(UserPO::getMobile, mobile).exists();
    }

    @Override
    public void insert(UserPO userPO) {
        requireNonNull(userPO, "User must not be null.");

        save(userPO);
        userCachedRepository.evictUserCache(userPO.getId());
    }

    @Override
    public UserPO byMobile(String mobile) {
        requireNonBlank(mobile, "Mobile must not be blank.");

        return lambdaQuery().eq(UserPO::getMobile, mobile).one();
    }

    @Override
    public void updateRoleById(String userId, RoleEnum role) {
        requireNonBlank(userId, "User ID must not be blank.");

        lambdaUpdate().eq(UserPO::getId, userId).set(UserPO::getRole, role).update();
        userCachedRepository.evictUserCache(userId);
    }

    @Override
    public void realNameVerify(String userId, String realName, Short idType, String idCard) {
        requireNonBlank(userId, "User ID must not be blank.");
        requireNonBlank(realName, "Real name must not be blank.");
        requireNonNull(idType, "ID type must not be null.");
        requireNonBlank(idCard, "ID card must not be blank.");

        lambdaUpdate().eq(UserPO::getId, userId)
                .set(UserPO::getRealName, realName)
                .set(UserPO::getIdType, idType)
                .set(UserPO::getIdCard, idCard)
                .update();
        userCachedRepository.evictUserCache(userId);
    }

    @Override
    public void changeMobile(String userId, String newMobile) {
        requireNonBlank(userId, "User ID must not be blank.");
        requireNonBlank(newMobile, "New mobile must not be blank.");

        lambdaUpdate().eq(UserPO::getId, userId)
                .set(UserPO::getMobile, newMobile)
                .update();
        userCachedRepository.evictUserCache(userId);
    }
}
