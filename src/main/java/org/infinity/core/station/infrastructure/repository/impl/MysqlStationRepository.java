package org.infinity.core.station.infrastructure.repository.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import org.infinity.core.common.exception.MyException;
import org.infinity.core.station.infrastructure.mapper.StationMapper;
import org.infinity.core.station.infrastructure.repository.StationRepository;
import org.infinity.core.station.infrastructure.repository.cache.MysqlStationCachedRepository;
import org.infinity.core.station.model.po.StationPO;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

import static java.util.stream.Collectors.toMap;
import static org.infinity.core.common.exception.ErrorCodeEnum.STATION_NOT_FOUND;
import static org.infinity.core.common.utils.ListUtils.listToString;
import static org.infinity.core.common.utils.ValidationUtils.*;

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

    @Override
    public StationPO cachedById(String stationId) {
        requireNonBlank(stationId, "Station ID must not be blank");

        StationPO station = stationCachedRepository.cachedById(stationId);
        if (isNull(station)) {
            throw new MyException(STATION_NOT_FOUND, "Station not found.", "stationId", stationId);
        }
        return station;
    }

    @Override
    public boolean allIdsExist(List<String> stationIds) {
        long stationCount = stationIds.stream().distinct().count();
        long dbStationCount = lambdaQuery().in(StationPO::getId, stationIds).count();
        return stationCount != dbStationCount;
    }

    @Override
    public Map<String, String> listStationIdAndStationName(List<String> stationIds) {
        List<StationPO> stations = listByIds(stationIds);
        if (isEmpty(stations)) {
            String msg = listToString(stationIds);
            throw new MyException(STATION_NOT_FOUND, "Station not found.", "stationIds", msg);
        }
        return stations.stream()
                .collect(toMap(StationPO::getId, StationPO::getStationName));
    }
}
