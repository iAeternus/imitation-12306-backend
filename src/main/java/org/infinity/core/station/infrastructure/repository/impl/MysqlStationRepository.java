package org.infinity.core.station.infrastructure.repository.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import org.infinity.core.station.infrastructure.mapper.StationMapper;
import org.infinity.core.station.infrastructure.repository.cache.MysqlStationCachedRepository;
import org.infinity.core.station.infrastructure.repository.StationRepository;
import org.infinity.core.station.model.po.StationPO;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/26
 * @className MysqlStationRepository
 * @desc
 */
@Repository
@RequiredArgsConstructor
public class MysqlStationRepository extends ServiceImpl<StationMapper, StationPO> implements StationRepository {

    private final MysqlStationCachedRepository stationCachedRepository;
    private final StationMapper stationMapper;

    @Override
    public StationPO cachedById(String stationId) {
        return stationCachedRepository.cachedById(stationId);
    }

    @Override
    public boolean allIdsExist(List<String> stationIds) {
        return stationIds.size() == lambdaQuery().in(StationPO::getId, stationIds).count();
    }
}
