package org.infinity.core.order.infrastructure.repository.cache;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.infinity.core.order.infrastructure.mapper.OrderMapper;
import org.infinity.core.order.model.po.OrderPO;
import org.infinity.core.train.model.po.CarriagePO;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.cache.annotation.Caching;
import org.springframework.stereotype.Repository;

import static org.infinity.core.common.constants.I12306Constants.CARRIAGE_CACHE;
import static org.infinity.core.common.constants.I12306Constants.ORDER_CACHE;
import static org.infinity.core.common.utils.ValidationUtils.requireNonBlank;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className MysqlOrderCachedRepository
 * @desc
 */
@Slf4j
@Repository
public class MysqlOrderCachedRepository extends ServiceImpl<OrderMapper, OrderPO> {

    @Cacheable(value = ORDER_CACHE, key = "#orderId")
    public OrderPO cachedById(String orderId) {
        requireNonBlank(orderId, "Order ID must not be blank.");

        return super.getById(orderId);
    }

    @Caching(evict = {@CacheEvict(value = ORDER_CACHE, key = "#orderId")})
    public void evictCarriageCache(String orderId) {
        requireNonBlank(orderId, "Order ID must not be blank.");

        log.info("Evicted cache for order[{}].", orderId);
    }

}
