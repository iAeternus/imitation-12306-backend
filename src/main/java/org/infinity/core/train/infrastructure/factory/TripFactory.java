package org.infinity.core.train.infrastructure.factory;

import lombok.RequiredArgsConstructor;
import org.infinity.core.station.infrastructure.repository.StationRepository;
import org.infinity.core.station.model.po.StationPO;
import org.infinity.core.train.model.dto.command.EnterTripBatchCommand;
import org.infinity.core.train.model.dto.response.TripPageResponse;
import org.infinity.core.train.model.po.TripPO;
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

    public TripPageResponse toTripPageResponse(TripPO trip) {
        StationPO originalStation = stationRepository.cachedById(trip.getOriginStationId());
        StationPO terminalStation = stationRepository.cachedById(trip.getTerminalStationId());
        return TripPageResponse.builder()
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
}
