package org.infinity.core.train.infrastructure.repository.cache;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.infinity.core.train.infrastructure.mapper.SeatMapper;
import org.infinity.core.train.model.po.SeatPO;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.cache.annotation.Caching;
import org.springframework.stereotype.Repository;

import static org.infinity.core.common.constants.I12306Constants.SEAT_CACHE;
import static org.infinity.core.common.utils.ValidationUtils.requireNonBlank;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className MysqlSeatCachedRepository
 * @desc
 */
@Slf4j
@Repository
public class MysqlSeatCachedRepository extends ServiceImpl<SeatMapper, SeatPO> {

    @Cacheable(value = SEAT_CACHE, key = "#seatId")
    public SeatPO cachedById(String seatId) {
        requireNonBlank(seatId, "Seat ID must not be blank.");

        return super.getById(seatId);
    }

    @Caching(evict = {@CacheEvict(value = SEAT_CACHE, key = "#seatId")})
    public void evictSeatCache(String seatId) {
        requireNonBlank(seatId, "Seat ID must not be blank.");

        log.info("Evicted cache for seat[{}].", seatId);
    }

}
