package org.infinity.core.train.infrastructure.repository.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import org.infinity.core.train.infrastructure.mapper.TrainMapper;
import org.infinity.core.train.infrastructure.repository.cache.MysqlTrainCachedRepository;
import org.infinity.core.train.infrastructure.repository.TrainRepository;
import org.infinity.core.train.model.po.TrainPO;
import org.springframework.stereotype.Repository;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className MysqlTrainRepository
 * @desc
 */
@Repository
@RequiredArgsConstructor
public class MysqlTrainRepository extends ServiceImpl<TrainMapper, TrainPO> implements TrainRepository {

    private final MysqlTrainCachedRepository trainCachedRepository;

    @Override
    public TrainPO cachedById(String trainId) {
        return trainCachedRepository.cachedById(trainId);
    }
}
