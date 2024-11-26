package org.infinity.core.station.infrastructure.repository;

import com.baomidou.mybatisplus.extension.service.IService;
import org.infinity.core.station.model.po.StationPO;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/26
 * @className StationRepository
 * @desc
 */
public interface StationRepository extends IService<StationPO> {
    StationPO cachedById(String stationId);
}
