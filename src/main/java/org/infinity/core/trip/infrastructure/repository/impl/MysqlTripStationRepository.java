package org.infinity.core.trip.infrastructure.repository.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import org.infinity.core.common.exception.MyException;
import org.infinity.core.trip.infrastructure.mapper.TripStationMapper;
import org.infinity.core.trip.infrastructure.repository.TripStationRepository;
import org.infinity.core.trip.infrastructure.repository.cache.MysqlTripStationCachedRepository;
import org.infinity.core.trip.model.po.TripStationPO;
import org.springframework.stereotype.Repository;

import java.util.List;

import static com.baomidou.mybatisplus.core.toolkit.ObjectUtils.isNull;
import static org.infinity.core.common.exception.ErrorCodeEnum.EMPTY_COLLECTION;
import static org.infinity.core.common.exception.ErrorCodeEnum.TRIP_STATION_NOT_FOUND;
import static org.infinity.core.common.utils.MapUtils.mapOf;
import static org.infinity.core.common.utils.ValidationUtils.isEmpty;
import static org.infinity.core.common.utils.ValidationUtils.requireNonBlank;

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
        requireNonBlank(tripId, "Trip ID must not be blank.");

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

    @Override
    public TripStationPO cachedById(String tripStationId) {
        return tripStationCachedRepository.cachedById(tripStationId);
    }

    @Override
    public String byTripIdAndStationId(String tripId, String stationId) {
        requireNonBlank(tripId, "Trip ID must not be blank.");
        requireNonBlank(stationId, "Station must not be blank.");

        TripStationPO tripStation = lambdaQuery().eq(TripStationPO::getTripId, tripId)
                .eq(TripStationPO::getStationId, stationId)
                .one();
        if (isNull(tripStation)) {
            throw new MyException(TRIP_STATION_NOT_FOUND, "Trip station not found.",
                    mapOf("tripId", tripId, "stationId", stationId));
        }
        return tripStation.getId();
    }
}
