package org.infinity.core.train.infrastructure.repository.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import org.infinity.core.train.infrastructure.mapper.TrainMapper;
import org.infinity.core.train.infrastructure.repository.TrainRepository;
import org.infinity.core.train.infrastructure.repository.cache.MysqlTrainCachedRepository;
import org.infinity.core.train.model.po.TrainPO;
import org.springframework.stereotype.Repository;

import java.util.List;

import static com.google.common.collect.ImmutableList.toImmutableList;

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

    private final TrainMapper trainMapper;
    private final MysqlTrainCachedRepository trainCachedRepository;

    @Override
    public TrainPO cachedById(String trainId) {
        return trainCachedRepository.cachedById(trainId);
    }

    /**
     * 这个同理
     * org.infinity.core.train.infrastructure.repository.impl.MysqlTripRepository
     */
    @Override
    public boolean allIdsExist(List<String> trainIds) {
        long trainCount = trainIds.stream().distinct().count();
        long dbTrainCount = lambdaQuery().in(TrainPO::getId, trainIds).count();
        return trainCount == dbTrainCount;
    }

    @Override
    public boolean existsById(String trainId) {
        return lambdaQuery().eq(TrainPO::getId, trainId).exists();
    }
}
