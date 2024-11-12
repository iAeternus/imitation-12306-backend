package org.infinity.core.train.infrastructure.repository.cache;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.infinity.core.train.infrastructure.mapper.TrainMapper;
import org.infinity.core.train.model.po.TrainPO;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.cache.annotation.Caching;
import org.springframework.stereotype.Repository;

import static org.infinity.core.common.constants.I12306Constants.TRAIN_CACHE;
import static org.infinity.core.common.constants.I12306Constants.TRIP_CACHE;
import static org.infinity.core.common.utils.ValidationUtils.requireNonBlank;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className MysqlTrainCachedRepository
 * @desc
 */
@Slf4j
@Repository
public class MysqlTrainCachedRepository extends ServiceImpl<TrainMapper, TrainPO> {

    @Cacheable(value = TRAIN_CACHE, key = "#trainId")
    public TrainPO cachedById(String trainId) {
        requireNonBlank(trainId, "Train ID must not be blank.");

        return super.getById(trainId);
    }

    @Caching(evict = {@CacheEvict(value = TRAIN_CACHE, key = "#trainId")})
    public void evictTrainCache(String trainId) {
        requireNonBlank(trainId, "Train ID must not be blank.");

        log.info("Evicted cache for train[{}].", trainId);
    }
}
