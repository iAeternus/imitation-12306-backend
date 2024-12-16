package org.infinity.core.train.infrastructure.repository.cache;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.infinity.core.train.infrastructure.mapper.CarriageMapper;
import org.infinity.core.train.model.po.CarriagePO;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.cache.annotation.Caching;
import org.springframework.stereotype.Repository;

import static org.infinity.core.common.constants.I12306Constants.CARRIAGE_CACHE;
import static org.infinity.core.common.utils.ValidationUtils.requireNonBlank;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className MysqlCarriageCachedRepository
 * @desc
 */
@Slf4j
@Repository
public class MysqlCarriageCachedRepository extends ServiceImpl<CarriageMapper, CarriagePO> {

    @Cacheable(value = CARRIAGE_CACHE, key = "#carriageId")
    public CarriagePO cachedById(String carriageId) {
        requireNonBlank(carriageId, "Carriage ID must not be blank.");

        return super.getById(carriageId);
    }

    @Caching(evict = {@CacheEvict(value = CARRIAGE_CACHE, key = "#carriageId")})
    public void evictCarriageCache(String carriageId) {
        requireNonBlank(carriageId, "Carriage ID must not be blank.");

        log.info("Evicted cache for carriage[{}].", carriageId);
    }

}
