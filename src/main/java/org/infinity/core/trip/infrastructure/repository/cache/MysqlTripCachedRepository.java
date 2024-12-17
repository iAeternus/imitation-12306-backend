package org.infinity.core.trip.infrastructure.repository.cache;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.infinity.core.trip.infrastructure.mapper.TripMapper;
import org.infinity.core.trip.model.po.TripPO;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.cache.annotation.Caching;
import org.springframework.stereotype.Repository;

import static org.infinity.core.common.constants.I12306Constants.TRIP_CACHE;
import static org.infinity.core.common.utils.ValidationUtils.requireNonBlank;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className MysqlTripCachedRepository
 * @desc
 */
@Slf4j
@Repository
public class MysqlTripCachedRepository extends ServiceImpl<TripMapper, TripPO> {

    @Cacheable(value = TRIP_CACHE, key = "#tripId")
    public TripPO cachedById(String tripId) {
        requireNonBlank(tripId, "Trip ID must not be blank.");

        return super.getById(tripId);
    }

    @Caching(evict = {@CacheEvict(value = TRIP_CACHE, key = "#tripId")})
    public void evictTripCache(String tripId) {
        requireNonBlank(tripId, "Trip ID must not be blank.");

        log.info("Evicted cache for trip[{}].", tripId);
    }
}
