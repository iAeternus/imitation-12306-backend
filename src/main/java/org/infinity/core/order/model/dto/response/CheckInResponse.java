package org.infinity.core.order.model.dto.response;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;
import org.infinity.core.common.model.marker.Response;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/17
 * @className CheckInResponse
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class CheckInResponse implements Response {

    @Schema(name = "是否成功，这里为了简化统一返回true")
    Boolean isSuccess;

}
