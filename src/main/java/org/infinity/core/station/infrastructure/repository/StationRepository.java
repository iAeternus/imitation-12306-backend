package org.infinity.core.station.infrastructure.repository;

import com.baomidou.mybatisplus.extension.service.IService;
import com.google.common.collect.ImmutableList;
import org.infinity.core.station.model.po.StationPO;

import java.util.List;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/26
 * @className StationRepository
 * @desc
 */
public interface StationRepository extends IService<StationPO> {
    StationPO cachedById(String stationId);

    boolean allIdsExist(List<String> stationIds);
}
