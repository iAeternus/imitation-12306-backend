package org.infinity.core.user.infrastructure.repository;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.infinity.core.user.infrastructure.mapper.UserMapper;
import org.infinity.core.user.model.po.UserPO;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.cache.annotation.Caching;
import org.springframework.stereotype.Repository;

import static org.infinity.core.common.constants.I12306Constants.TRAIN_CACHE;
import static org.infinity.core.common.constants.I12306Constants.USER_CACHE;
import static org.infinity.core.common.utils.ValidationUtils.requireNonBlank;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/8
 * @className MysqlUserCachedRepository
 * @desc
 */
@Slf4j
@Repository
public class MysqlUserCachedRepository extends ServiceImpl<UserMapper, UserPO> {

    @Cacheable(value = USER_CACHE, key = "#userId")
    public UserPO cachedById(String userId) {
        requireNonBlank(userId, "User ID must not be null.");

        return super.getById(userId);
    }

    @Caching(evict = {@CacheEvict(value = USER_CACHE, key = "#userId")})
    public void evictUserCache(String userId) {
        requireNonBlank(userId, "User ID must not be blank.");

        log.info("Evicted cache for user[{}].", userId);
    }

}
