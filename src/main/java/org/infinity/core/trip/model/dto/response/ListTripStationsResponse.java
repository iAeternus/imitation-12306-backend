package org.infinity.core.trip.model.dto.response;

import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;
import org.infinity.core.common.domain.marker.Response;

import java.time.LocalDateTime;
import java.util.List;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/23
 * @className ListTripStationsResponse
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class ListTripStationsResponse implements Response {

    List<TripStationsInfo> tripStationsInfos;

    @Value
    @Builder
    @AllArgsConstructor(access = AccessLevel.PRIVATE)
    public static class TripStationsInfo {
        @Schema(name = "站点名称")
        String stationName;

        @Schema(name = "开点")
        @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
        LocalDateTime leaveAt;

        @Schema(name = "到点")
        @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
        LocalDateTime arrivalAt;

        @Schema(name = "停留时间（单位 分钟）")
        Integer retentionTime;

        @Schema(name = "状态（0-正点、1-晚点、2-取消、3-结束）（简化起见默认正点）")
        Short status;
    }

}
