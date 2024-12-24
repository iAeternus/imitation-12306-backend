package org.infinity.core.trip.infrastructure.repository.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import org.infinity.core.common.exception.MyException;
import org.infinity.core.trip.infrastructure.mapper.TripMapper;
import org.infinity.core.trip.infrastructure.repository.TripRepository;
import org.infinity.core.trip.infrastructure.repository.cache.MysqlTripCachedRepository;
import org.infinity.core.trip.model.TripStatusEnum;
import org.infinity.core.trip.model.po.TripPO;
import org.springframework.stereotype.Repository;

import static org.infinity.core.common.exception.ErrorCodeEnum.TRIP_NOT_FOUND;
import static org.infinity.core.common.utils.MapUtils.mapOf;
import static org.infinity.core.common.utils.ValidationUtils.*;


/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className MysqlTripRepository
 * @desc
 */
@Repository
@RequiredArgsConstructor
public class MysqlTripRepository extends ServiceImpl<TripMapper, TripPO> implements TripRepository {

    private final MysqlTripCachedRepository tripCachedRepository;

    @Override
    public TripPO cachedById(String tripId) {
        requireNonBlank(tripId, "Trip ID must not be blank.");

        TripPO tripPO = tripCachedRepository.cachedById(tripId);
        if (isNull(tripPO)) {
            throw new MyException(TRIP_NOT_FOUND, "Trip not found.", mapOf("tripId", tripId));
        }

        return tripPO;
    }

    @Override
    public boolean updateStatus(String tripId, TripStatusEnum newStatus) {
        requireNonBlank(tripId, "Trip ID must not be blank.");
        requireNonNull(newStatus, "Order status must not be null.");

        TripPO trip = getById(tripId);
        if (isNull(trip)) {
            throw new MyException(TRIP_NOT_FOUND, "Trip not found.", mapOf("tripId", tripId));
        }
        if (trip.getStatus() == newStatus) {
            return false;
        }

        trip.setStatus(newStatus);
        tripCachedRepository.evictTripCache(tripId);
        return updateById(trip);
    }
}
