package org.infinity.core.cs.model.dto.response;

import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;
import org.infinity.core.common.domain.marker.Response;

import java.time.LocalDateTime;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/17
 * @className ByIdResponse
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class ByIdResponse implements Response {

    @Schema(name = "站点名称")
    String stationName;

    @Schema(name = "电话号码")
    String phoneNumber;

    @Schema(name = "服务时间（24小时制 eg 9:00-17:00）")
    String serverTime;

    @Schema(name = "最后修改时间")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    LocalDateTime updateAt;

}
