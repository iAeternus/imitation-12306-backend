package org.infinity.core.trip.model.dto.command;

import com.fasterxml.jackson.annotation.JsonFormat;
import jakarta.validation.Valid;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;
import org.infinity.core.common.domain.marker.Command;
import org.infinity.core.common.validation.collection.NoNullElement;
import org.infinity.core.common.validation.id.station.StationId;
import org.infinity.core.common.validation.id.trip.TripId;

import java.time.LocalDateTime;
import java.util.List;

import static org.infinity.core.common.constants.I12306Constants.MAX_ENTER_LENGTH;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/3
 * @className EnterTripStationsCommand
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class EnterTripStationsCommand implements Command {

    @NotBlank
    @TripId
    String tripId;

    @Valid
    @NotNull
    @NoNullElement
    @Size(min = 2, max = MAX_ENTER_LENGTH)
    List<@Valid TripStationInfo> tripStationInfos;

    @Value
    @Builder
    @AllArgsConstructor(access = AccessLevel.PRIVATE)
    public static class TripStationInfo {

        @NotBlank
        @StationId
        String stationId;

        @NotNull
        @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
        LocalDateTime arrivalAt;

        @NotNull
        Integer retentionTime;

        @NotNull
        Integer order;

    }

}
