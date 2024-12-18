package org.infinity.core.user.model.dto.response;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;
import org.infinity.core.common.domain.marker.Response;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/18
 * @className LogoutResponse
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class LogoutResponse implements Response {

    Boolean isSuccess;

}
