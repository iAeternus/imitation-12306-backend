package org.infinity.core.train.infrastructure.repository.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import org.infinity.core.common.exception.ErrorCodeEnum;
import org.infinity.core.common.exception.MyException;
import org.infinity.core.common.utils.ValidationUtils;
import org.infinity.core.train.infrastructure.mapper.TrainMapper;
import org.infinity.core.train.infrastructure.repository.TrainRepository;
import org.infinity.core.train.infrastructure.repository.cache.MysqlTrainCachedRepository;
import org.infinity.core.train.model.po.TrainPO;
import org.springframework.stereotype.Repository;

import java.util.List;

import static org.infinity.core.common.exception.ErrorCodeEnum.TRAIN_NOT_FOUND;
import static org.infinity.core.common.utils.MapUtils.mapOf;
import static org.infinity.core.common.utils.ValidationUtils.isNull;
import static org.infinity.core.common.utils.ValidationUtils.requireNonBlank;

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
        requireNonBlank(trainId, "Train ID must not be blank.");

        TrainPO train = trainCachedRepository.cachedById(trainId);
        if(isNull(train)) {
            throw new MyException(TRAIN_NOT_FOUND, "Train not found.", mapOf("trainId", trainId));
        }
        return train;
    }

    /**
     * 这个同理
     * org.infinity.core.trip.infrastructure.repository.impl.MysqlTripRepository
     */
    @Override
    public boolean allIdsExist(List<String> trainIds) {
        long trainCount = trainIds.stream().distinct().count();
        long dbTrainCount = lambdaQuery().in(TrainPO::getId, trainIds).count();
        return trainCount == dbTrainCount;
    }

    @Override
    public boolean existsById(String trainId) {
        requireNonBlank(trainId, "Train ID must not be blank.");

        return lambdaQuery().eq(TrainPO::getId, trainId).exists();
    }
}
