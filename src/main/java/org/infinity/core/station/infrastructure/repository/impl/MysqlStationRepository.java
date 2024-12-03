package org.infinity.core.station.infrastructure.repository.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import org.infinity.core.common.exception.ErrorCodeEnum;
import org.infinity.core.common.exception.MyException;
import org.infinity.core.common.utils.ValidationUtils;
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
        StationPO station = stationCachedRepository.cachedById(stationId);
        if(ValidationUtils.isNull(station)) {
            throw new MyException(ErrorCodeEnum.STATION_NOT_FOUND, "Station not found.", "stationId", stationId);
        }
        return station;
    }

    @Override
    public boolean allIdsExist(List<String> stationIds) {
        return stationIds.size() == lambdaQuery().in(StationPO::getId, stationIds).count();
    }
}
