package org.infinity.core.cs.model.dto.response;

import com.fasterxml.jackson.annotation.JsonFormat;
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
 * @date 2024/12/18
 * @className ListAllCSsResponse
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class ListAllCSsResponse implements Response {

    List<CSInfo> csInfos;

    @Value
    @Builder
    @AllArgsConstructor(access = AccessLevel.PRIVATE)
    public static class CSInfo {
        String id;
        String stationName;
        String phoneNumber;
        String serverTime;
        @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
        LocalDateTime updateAt;
    }

}
