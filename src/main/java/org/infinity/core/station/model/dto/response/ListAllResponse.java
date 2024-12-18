package org.infinity.core.station.model.dto.response;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;
import org.infinity.core.common.model.marker.Response;

import java.time.LocalDateTime;
import java.util.List;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/18
 * @className ListAllResponse
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class ListAllResponse implements Response {

    List<StationInfo> stationInfos;

    @Value
    @Builder
    @AllArgsConstructor(access = AccessLevel.PRIVATE)
    public static class StationInfo {
        String id;
        Character bureauCode;
        String stationName;
        String stationTelecode;
        String saleTime;
        String startDate;
        String stopDate;
        LocalDateTime operateTime;
    }

}
