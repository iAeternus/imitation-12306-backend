package org.infinity.core.train.infrastructure.repository.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import org.infinity.core.common.utils.ValidationUtils;
import org.infinity.core.train.infrastructure.mapper.TripSeatMapper;
import org.infinity.core.train.infrastructure.repository.TripSeatRepository;
import org.infinity.core.train.infrastructure.repository.cache.MysqlTripSeatCachedRepository;
import org.infinity.core.train.model.po.TripSeatPO;
import org.springframework.stereotype.Repository;

import java.util.Collections;
import java.util.List;

import static org.infinity.core.common.utils.ValidationUtils.isEmpty;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/3
 * @className MysqlTripSeatRepository
 * @desc
 */
@Repository
@RequiredArgsConstructor
public class MysqlTripSeatRepository extends ServiceImpl<TripSeatMapper, TripSeatPO> implements TripSeatRepository {

    private final MysqlTripSeatCachedRepository tripSeatCachedRepository;

    @Override
    public List<TripSeatPO> listByTripId(String tripId) {
        List<TripSeatPO> tripSeats = lambdaQuery().eq(TripSeatPO::getTripId, tripId).list();
        if(isEmpty(tripSeats)) {
            return Collections.emptyList();
        }
        return tripSeats;
    }
}
