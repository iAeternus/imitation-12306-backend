package org.infinity.core.train.infrastructure.repository.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import org.infinity.core.common.exception.MyException;
import org.infinity.core.train.infrastructure.mapper.CarriageMapper;
import org.infinity.core.train.infrastructure.repository.CarriageRepository;
import org.infinity.core.train.infrastructure.repository.cache.MysqlCarriageCachedRepository;
import org.infinity.core.train.model.po.CarriagePO;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import static org.infinity.core.common.exception.ErrorCodeEnum.EMPTY_COLLECTION;
import static org.infinity.core.common.utils.MapUtils.mapOf;
import static org.infinity.core.common.utils.ValidationUtils.isEmpty;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className MysqlCarriageRepository
 * @desc
 */
@Repository
@RequiredArgsConstructor
public class MysqlCarriageRepository extends ServiceImpl<CarriageMapper, CarriagePO> implements CarriageRepository {

    private final MysqlCarriageCachedRepository carriageCachedRepository;

    @Override
    public List<CarriagePO> listByTrainId(String trainId) {
        List<CarriagePO> carriages = lambdaQuery().eq(CarriagePO::getTrainId, trainId).list();
        if (isEmpty(carriages)) {
            throw new MyException(EMPTY_COLLECTION, "The train with train ID [" + trainId + "] has an empty carriage list",
                    mapOf("trainId", trainId));
        }
        return carriages;
    }

    @Override
    public Map<String, List<CarriagePO>> listByTrainIds(List<String> trainIds) {
        List<CarriagePO> carriages = lambdaQuery().in(CarriagePO::getTrainId, trainIds).list();
        if (isEmpty(carriages)) {
            String trainIdsStr = String.join(", ", trainIds);
            throw new MyException(EMPTY_COLLECTION, "The train in [" + trainIdsStr + "] has an empty carriage list",
                    mapOf("trainIds", trainIdsStr));
        }
        return carriages.stream().collect(Collectors.groupingBy(CarriagePO::getTrainId));
    }

    @Override
    public CarriagePO cachedById(String id) {
        return carriageCachedRepository.cachedById(id);
    }
}
