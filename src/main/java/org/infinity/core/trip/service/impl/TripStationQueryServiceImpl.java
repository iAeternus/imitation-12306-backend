package org.infinity.core.trip.service.impl;

import lombok.RequiredArgsConstructor;
import org.infinity.core.station.infrastructure.repository.StationRepository;
import org.infinity.core.trip.infrastructure.repository.TripStationRepository;
import org.infinity.core.trip.model.dto.response.ListTripStationsResponse;
import org.infinity.core.trip.model.po.TripStationPO;
import org.infinity.core.trip.service.TripStationQueryService;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import static com.google.common.collect.ImmutableList.toImmutableList;
import static org.infinity.core.trip.model.TripStatusEnum.ON_SCHEDULE;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/17
 * @className TripStationQueryServiceImpl
 * @desc
 */
@Service
@RequiredArgsConstructor
public class TripStationQueryServiceImpl implements TripStationQueryService {

    private final TripStationRepository tripStationRepository;
    private final StationRepository stationRepository;

    @Override
    public ListTripStationsResponse listTripStations(String tripId) {
        List<TripStationPO> tripStations = tripStationRepository.listByTripId(tripId);
        List<String> stationIds = tripStations.stream()
                .map(TripStationPO::getStationId)
                .collect(toImmutableList());
        Map<String, String> stationNames = stationRepository.listStationIdAndStationName(stationIds);
        return ListTripStationsResponse.builder()
                .tripStationsInfos(tripStations.stream()
                        .map(tripStation -> ListTripStationsResponse.TripStationsInfo.builder()
                                .stationName(stationNames.get(tripStation.getStationId()))
                                .leaveAt(tripStation.getArrivalAt().plusMinutes(tripStation.getRetentionTime()))
                                .arrivalAt(tripStation.getArrivalAt())
                                .retentionTime(tripStation.getRetentionTime())
                                .status(ON_SCHEDULE.getKey())
                                .build())
                        .collect(toImmutableList()))
                .build();
    }
}
