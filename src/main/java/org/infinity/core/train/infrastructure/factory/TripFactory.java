package org.infinity.core.train.infrastructure.factory;

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
public class TripFactory {

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
        return TripPageResponse.builder()
                .trainId(trip.getTrainId())
                .originStationId(trip.getOriginStationId())
                .startAt(trip.getStartAt())
                .terminalStationId(trip.getTerminalStationId())
                .endAt(trip.getEndAt())
                .status(trip.getStatus())
                .createAt(trip.getCreateAt())
                .updateAt(trip.getUpdateAt())
                .build();
    }
}
