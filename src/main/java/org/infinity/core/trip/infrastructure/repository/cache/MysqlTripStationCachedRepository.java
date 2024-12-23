package org.infinity.core.trip.infrastructure.repository.cache;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.infinity.core.trip.infrastructure.mapper.TripStationMapper;
import org.infinity.core.trip.model.po.TripPO;
import org.infinity.core.trip.model.po.TripStationPO;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.cache.annotation.Caching;
import org.springframework.stereotype.Repository;

import static org.infinity.core.common.constants.I12306Constants.TRIP_STATION_CACHE;
import static org.infinity.core.common.utils.ValidationUtils.requireNonBlank;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className MysqlTripStationCachedRepository
 * @desc
 */
@Slf4j
@Repository
public class MysqlTripStationCachedRepository extends ServiceImpl<TripStationMapper, TripStationPO> {

    @Cacheable(value = TRIP_STATION_CACHE, key = "#tripStationId")
    public TripStationPO cachedById(String tripStationId) {
        requireNonBlank(tripStationId, "Trip Station ID must not be blank.");

        return super.getById(tripStationId);
    }

    @Caching(evict = {@CacheEvict(value = TRIP_STATION_CACHE, key = "#tripStationId")})
    public void evictTripStationCache(String tripStationId) {
        requireNonBlank(tripStationId, "Trip Station ID must not be blank.");

        log.info("Evicted cache for trip station[{}].", tripStationId);
    }

}
