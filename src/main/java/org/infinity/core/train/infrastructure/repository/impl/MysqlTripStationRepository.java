package org.infinity.core.train.infrastructure.repository.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import org.infinity.core.common.exception.MyException;
import org.infinity.core.train.infrastructure.mapper.TripStationMapper;
import org.infinity.core.train.infrastructure.repository.TripStationRepository;
import org.infinity.core.train.infrastructure.repository.cache.MysqlTripStationCachedRepository;
import org.infinity.core.train.model.po.TripStationPO;
import org.springframework.stereotype.Repository;

import java.util.List;

import static org.infinity.core.common.exception.ErrorCodeEnum.EMPTY_COLLECTION;
import static org.infinity.core.common.utils.MapUtils.mapOf;
import static org.infinity.core.common.utils.ValidationUtils.isEmpty;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className MysqlTripStationRepository
 * @desc
 */
@Repository
@RequiredArgsConstructor
public class MysqlTripStationRepository extends ServiceImpl<TripStationMapper, TripStationPO> implements TripStationRepository {

    private final MysqlTripStationCachedRepository tripStationCachedRepository;

    @Override
    public List<TripStationPO> listByTripId(String tripId) {
        List<TripStationPO> tripStations = lambdaQuery()
                .eq(TripStationPO::getTripId, tripId)
                .orderBy(true, true, TripStationPO::getOrderNum)
                .list();
        if (isEmpty(tripStations)) {
            throw new MyException(EMPTY_COLLECTION, "The trip with trip ID [" + tripId + "] has an empty trip_station list",
                    mapOf("tripId", tripId));
        }
        return tripStations;
    }
}
