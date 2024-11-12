package org.infinity.core.train.infrastructure.repository;

import com.baomidou.mybatisplus.extension.service.IService;
import org.infinity.core.train.model.po.TripPO;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className TripRepository
 * @desc
 */
public interface TripRepository extends IService<TripPO> {
    TripPO cachedById(String tripId);
}
