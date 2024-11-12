package org.infinity.core.user.infrastructure.repository.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import org.infinity.core.user.infrastructure.mapper.UserMapper;
import org.infinity.core.user.infrastructure.repository.MysqlUserCachedRepository;
import org.infinity.core.user.infrastructure.repository.UserRepository;
import org.infinity.core.user.model.po.UserPO;
import org.springframework.stereotype.Repository;

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
        return null;
    }
}
