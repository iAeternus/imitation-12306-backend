package org.infinity.core.train.infrastructure.repository;

import com.baomidou.mybatisplus.extension.service.IService;
import org.infinity.core.train.model.po.TripStationPO;

import java.util.List;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className TripStationRepository
 * @desc
 */
public interface TripStationRepository extends IService<TripStationPO> {
    List<TripStationPO> listByTripId(String tripId);
}
