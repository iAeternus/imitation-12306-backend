package org.infinity.core.trip.model.dto.response;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;
import org.infinity.core.common.domain.marker.Response;

import java.time.LocalDateTime;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/26
 * @className TripResponse
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class TripResponse implements Response {

    String tripId;
    String trainId;
    String originStationName;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    LocalDateTime startAt;

    String terminalStationName;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    LocalDateTime endAt;

    String status;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    LocalDateTime createAt;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    LocalDateTime updateAt;

}
