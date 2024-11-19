package org.infinity.core.train.infrastructure.repository.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import org.infinity.core.common.exception.MyException;
import org.infinity.core.train.infrastructure.mapper.SeatMapper;
import org.infinity.core.train.infrastructure.repository.SeatRepository;
import org.infinity.core.train.infrastructure.repository.cache.MysqlSeatCachedRepository;
import org.infinity.core.train.model.po.SeatPO;
import org.springframework.stereotype.Repository;

import java.util.List;

import static org.infinity.core.common.exception.ErrorCodeEnum.EMPTY_COLLECTION;
import static org.infinity.core.common.utils.MapUtils.mapOf;
import static org.infinity.core.common.utils.ValidationUtils.isEmpty;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className MysqlSeatRepository
 * @desc
 */
@Repository
@RequiredArgsConstructor
public class MysqlSeatRepository extends ServiceImpl<SeatMapper, SeatPO> implements SeatRepository {

    private final MysqlSeatCachedRepository seatCachedRepository;

    @Override
    public List<SeatPO> listByCarIds(List<String> carIds) {
        List<SeatPO> seats = lambdaQuery().in(SeatPO::getCarId, carIds).list();
        if (isEmpty(seats)) {
            throw new MyException(EMPTY_COLLECTION, "The car with car ID [" + carIds + "] has an empty seat list",
                    mapOf("carIds", carIds));
        }
        return seats;
    }
}
