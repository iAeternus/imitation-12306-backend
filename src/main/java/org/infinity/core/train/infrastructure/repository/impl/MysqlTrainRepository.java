package org.infinity.core.train.infrastructure.repository.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import org.infinity.core.train.infrastructure.mapper.TrainMapper;
import org.infinity.core.train.infrastructure.repository.TrainRepository;
import org.infinity.core.train.infrastructure.repository.cache.MysqlTrainCachedRepository;
import org.infinity.core.train.model.po.TrainPO;
import org.springframework.stereotype.Repository;

import java.util.List;

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
     * TODO 不能这么判断，如果trainIds存在重复就会有bug!!!]
     * 这个同理
     * org.infinity.core.train.infrastructure.repository.impl.MysqlTripRepository
     * @param trainIds
     * @return
     */
    @Override
    public boolean allIdsExist(List<String> trainIds) {
        return trainIds.size() == lambdaQuery().in(TrainPO::getId, trainIds).count();
    }
}
