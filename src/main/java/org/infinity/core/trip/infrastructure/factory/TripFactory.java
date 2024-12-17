package org.infinity.core.trip.infrastructure.factory;

import lombok.RequiredArgsConstructor;
import org.infinity.core.station.infrastructure.repository.StationRepository;
import org.infinity.core.station.model.po.StationPO;
import org.infinity.core.trip.model.dto.command.EnterTripBatchCommand;
import org.infinity.core.trip.model.dto.command.EnterTripStationsCommand;
import org.infinity.core.trip.model.dto.response.TripResponse;
import org.infinity.core.trip.model.po.TripPO;
import org.infinity.core.trip.model.po.TripStationPO;
import org.springframework.stereotype.Component;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/26
 * @className TripFactory
 * @desc
 */
@Component
@RequiredArgsConstructor
public class TripFactory {

    private final StationRepository stationRepository;

    public TripPO enterTripBatch(EnterTripBatchCommand.TripInfo tripInfo) {
        return new TripPO(
                tripInfo.getTrainId(),
                tripInfo.getOriginStationId(),
                tripInfo.getStartAt(),
                tripInfo.getTerminalStationId(),
                tripInfo.getEndAt()
        );
    }

    public TripResponse toTripResponse(TripPO trip) {
        StationPO originalStation = stationRepository.cachedById(trip.getOriginStationId());
        StationPO terminalStation = stationRepository.cachedById(trip.getTerminalStationId());
        return TripResponse.builder()
                .tripId(trip.getId())
                .trainId(trip.getTrainId())
                .originStationName(originalStation.getStationName())
                .startAt(trip.getStartAt())
                .terminalStationName(terminalStation.getStationName())
                .endAt(trip.getEndAt())
                .status(trip.getStatus().getDesc())
                .createAt(trip.getCreateAt())
                .updateAt(trip.getUpdateAt())
                .build();
    }

    public TripStationPO enterTripStations(String tripId, EnterTripStationsCommand.TripStationInfo tripStationInfo) {
        return new TripStationPO(
                tripId,
                tripStationInfo.getStationId(),
                tripStationInfo.getArrivalAt(),
                tripStationInfo.getRetentionTime(),
                tripStationInfo.getOrder()
        );
    }
}
