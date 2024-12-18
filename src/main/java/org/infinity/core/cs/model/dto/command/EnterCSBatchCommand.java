package org.infinity.core.cs.model.dto.command;

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
import org.infinity.core.common.validation.mobile.Mobile;
import org.infinity.core.common.validation.servertime.ServerTime;

import java.util.List;

import static org.infinity.core.common.constants.I12306Constants.MAX_ENTER_LENGTH;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/17
 * @className EnterCSBatchCommand
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class EnterCSBatchCommand implements Command {

    @Valid
    @NotNull
    @NoNullElement
    @Size(max = MAX_ENTER_LENGTH)
    List<@Valid CSInfo> csInfos;

    @Value
    @Builder
    @AllArgsConstructor(access = AccessLevel.PRIVATE)
    public static class CSInfo {

        @NotBlank
        @StationId
        String stationId;

        @Mobile
        @NotBlank
        String phoneNumber;

        @NotBlank
        @ServerTime
        String serverTime;

    }

}
