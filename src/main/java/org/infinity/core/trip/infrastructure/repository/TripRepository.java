package org.infinity.core.trip.infrastructure.repository;

import com.baomidou.mybatisplus.extension.service.IService;
import org.infinity.core.trip.model.TripStatusEnum;
import org.infinity.core.trip.model.po.TripPO;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className TripRepository
 * @desc
 */
public interface TripRepository extends IService<TripPO> {
    TripPO cachedById(String tripId);

    boolean updateStatus(String tripId, TripStatusEnum newStatus);
}
