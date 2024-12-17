package org.infinity.core.trip.infrastructure.repository.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.infinity.core.common.exception.MyException;
import org.infinity.core.trip.infrastructure.mapper.TripSeatMapper;
import org.infinity.core.trip.infrastructure.repository.TripSeatRepository;
import org.infinity.core.trip.model.po.TripSeatPO;
import org.springframework.stereotype.Repository;

import java.util.Collections;
import java.util.List;

import static org.infinity.core.common.exception.ErrorCodeEnum.TRIP_SEAT_NOT_FOUND;
import static org.infinity.core.common.utils.MapUtils.mapOf;
import static org.infinity.core.common.utils.ValidationUtils.isEmpty;
import static org.infinity.core.common.utils.ValidationUtils.isNull;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/3
 * @className MysqlTripSeatRepository
 * @desc
 */
@Slf4j
@Repository
@RequiredArgsConstructor
public class MysqlTripSeatRepository extends ServiceImpl<TripSeatMapper, TripSeatPO> implements TripSeatRepository {

    // private final MysqlTripSeatCachedRepository tripSeatCachedRepository;
    private final TripSeatMapper tripSeatMapper;

    @Override
    public List<TripSeatPO> listByTripId(String tripId) {
        List<TripSeatPO> tripSeats = lambdaQuery().eq(TripSeatPO::getTripId, tripId).list();
        if (isEmpty(tripSeats)) {
            return Collections.emptyList();
        }
        return tripSeats;
    }

    @Override
    public void insertBatch(List<TripSeatPO> tripSeats) {
        try {
            tripSeatMapper.insertBatch(tripSeats);
        } catch (Throwable t) {
            log.error("Fuck you hiding exceptions：", t);
        }
    }

    @Override
    public TripSeatPO getByTripIdAnsSeatId(String tripId, String seatId) {
        TripSeatPO tripSeat = lambdaQuery().eq(TripSeatPO::getTripId, tripId).eq(TripSeatPO::getSeatId, seatId).one();
        if (isNull(tripSeat)) {
            throw new MyException(TRIP_SEAT_NOT_FOUND, "Trip seat not found.", mapOf("tripId", tripId, "seatId", seatId));
        }
        return tripSeat;
    }
}
