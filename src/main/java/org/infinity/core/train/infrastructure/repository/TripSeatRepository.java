package org.infinity.core.train.infrastructure.repository;

import com.baomidou.mybatisplus.extension.service.IService;
import org.infinity.core.train.model.po.TripSeatPO;

import java.util.List;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/3
 * @className TripSeatRepository
 * @desc
 */
public interface TripSeatRepository extends IService<TripSeatPO> {
    List<TripSeatPO> listByTripId(String tripId);

    void insertBatch(List<TripSeatPO> tripSeats);

    TripSeatPO getByTripIdAnsSeatId(String tripId, String seatId);

}
