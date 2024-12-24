package org.infinity.core.cs.infrastructure.repository.cache;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.infinity.core.cs.infrastructure.mapper.CSMapper;
import org.infinity.core.cs.model.po.CustomerServicePO;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.cache.annotation.Caching;
import org.springframework.stereotype.Repository;

import static org.infinity.core.common.constants.I12306Constants.CS_CACHE;
import static org.infinity.core.common.utils.ValidationUtils.requireNonBlank;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/17
 * @className MysqlCSCachedRepository
 * @desc
 */
@Slf4j
@Repository
public class MysqlCSCachedRepository extends ServiceImpl<CSMapper, CustomerServicePO> {

    @Cacheable(value = CS_CACHE, key = "#csId")
    public CustomerServicePO cachedById(String csId) {
        requireNonBlank(csId, "Customer Service ID must not be blank.");

        return super.getById(csId);
    }

    @Caching(evict = {@CacheEvict(value = CS_CACHE, key = "#csId")})
    public void evictCSCache(String csId) {
        requireNonBlank(csId, "Customer Service ID must not be blank.");

        log.info("Evicted cache for order[{}].", csId);
    }

}
