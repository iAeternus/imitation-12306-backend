package org.infinity.core.user.infrastructure.repository.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.extension.conditions.update.LambdaUpdateChainWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import org.infinity.core.user.infrastructure.mapper.UserMapper;
import org.infinity.core.user.infrastructure.repository.cache.MysqlUserCachedRepository;
import org.infinity.core.user.infrastructure.repository.UserRepository;
import org.infinity.core.user.model.RoleEnum;
import org.infinity.core.user.model.po.UserPO;
import org.springframework.stereotype.Repository;

import javax.management.relation.Role;

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
        return userCachedRepository.cachedById(userId);
    }

    @Override
    public boolean existsByMobile(String mobile) {
        return lambdaQuery().eq(UserPO::getMobile, mobile).exists();
    }

    @Override
    public void insert(UserPO userPO) {
        save(userPO);
        userCachedRepository.evictUserCache(userPO.getId());
    }

    @Override
    public UserPO byMobile(String mobile) {
        return lambdaQuery().eq(UserPO::getMobile, mobile).one();
    }

    @Override
    public void updateRoleById(String userId, RoleEnum role) {
        lambdaUpdate().eq(UserPO::getId, userId).set(UserPO::getRole, role).update();
        userCachedRepository.evictUserCache(userId);
    }
}
