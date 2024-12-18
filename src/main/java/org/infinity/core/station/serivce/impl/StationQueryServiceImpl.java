package org.infinity.core.station.serivce.impl;

import lombok.RequiredArgsConstructor;
import org.infinity.core.station.infrastructure.repository.StationRepository;
import org.infinity.core.station.model.dto.response.ListAllStationsResponse;
import org.infinity.core.station.model.po.StationPO;
import org.infinity.core.station.serivce.StationQueryService;
import org.springframework.stereotype.Service;

import java.util.List;

import static com.google.common.collect.ImmutableList.toImmutableList;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/18
 * @className StationQueryServiceImpl
 * @desc
 */
@Service
@RequiredArgsConstructor
public class StationQueryServiceImpl implements StationQueryService {

    private final StationRepository stationRepository;

    @Override
    public ListAllStationsResponse listAll() {
        List<StationPO> stations = stationRepository.list();
        List<ListAllStationsResponse.StationInfo> stationInfo = stations.stream()
                .map(station -> ListAllStationsResponse.StationInfo.builder()
                        .id(station.getId())
                        .bureauCode(station.getBureauCode())
                        .stationName(station.getStationName())
                        .stationTelecode(station.getStationTelecode())
                        .saleTime(station.getSaleTime())
                        .startDate(station.getStartDate())
                        .stopDate(station.getStopDate())
                        .operateTime(station.getOperateTime())
                        .build())
                .collect(toImmutableList());
        return ListAllStationsResponse.builder()
                .stationInfos(stationInfo)
                .build();
    }
}
