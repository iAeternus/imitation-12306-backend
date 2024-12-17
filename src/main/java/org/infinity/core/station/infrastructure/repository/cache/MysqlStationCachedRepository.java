package org.infinity.core.station.infrastructure.repository.cache;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.infinity.core.station.infrastructure.mapper.StationMapper;
import org.infinity.core.station.model.po.StationPO;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.cache.annotation.Caching;
import org.springframework.stereotype.Repository;

import static org.infinity.core.common.constants.I12306Constants.STATION_CACHE;
import static org.infinity.core.common.utils.ValidationUtils.requireNonBlank;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/26
 * @className MysqlStationCachedRepository
 * @desc
 */
@Slf4j
@Repository
public class MysqlStationCachedRepository extends ServiceImpl<StationMapper, StationPO> {

    @Cacheable(value = STATION_CACHE, key = "#stationId")
    public StationPO cachedById(String stationId) {
        requireNonBlank(stationId, "Station ID must not be null.");

        return super.getById(stationId);
    }

    @Caching(evict = {@CacheEvict(value = STATION_CACHE, key = "#stationId")})
    public void evictUserCache(String stationId) {
        requireNonBlank(stationId, "Station ID must not be blank.");

        log.info("Evicted cache for station[{}].", stationId);
    }

}
