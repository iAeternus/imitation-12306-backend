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
import org.infinity.core.common.exception.MyException;
import org.infinity.core.common.validation.collection.NoNullElement;
import org.infinity.core.common.validation.id.station.StationId;
import org.infinity.core.common.validation.id.train.TrainId;

import java.time.LocalDateTime;
import java.util.List;

import static org.infinity.core.common.constants.I12306Constants.MAX_ENTER_LENGTH;
import static org.infinity.core.common.exception.ErrorCodeEnum.INVALID_TIME_DURATION;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/26
 * @className EnterTripBatchCommand
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class EnterTripBatchCommand implements Command {

    @Valid
    @NotNull
    @NoNullElement
    @Size(max = MAX_ENTER_LENGTH)
    List<@Valid TripInfo> tripInfos;

    @Value
    @Builder
    @AllArgsConstructor(access = AccessLevel.PRIVATE)
    public static class TripInfo {

        @NotBlank
        @TrainId
        String trainId;

        @NotBlank
        @StationId
        String originStationId;

        @NotNull
        @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
        LocalDateTime startAt;

        @NotBlank
        @StationId
        String terminalStationId;

        @NotNull
        @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
        LocalDateTime endAt;

        public void correctAndValidate() {
            if (!endAt.isAfter(startAt)) {
                throw new MyException(INVALID_TIME_DURATION, "End time must be after start time.",
                        "trainId", trainId, "startAt", startAt, "endAt", endAt);
            }
        }

    }

    @Override
    public void correctAndValidate() {
        Command.super.correctAndValidate();
        tripInfos.forEach(TripInfo::correctAndValidate);
    }

}
