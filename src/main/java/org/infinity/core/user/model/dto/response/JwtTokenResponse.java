package org.infinity.core.user.model.dto.response;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;
import org.infinity.core.common.domain.marker.Response;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/10/26
 * @className JwtTokenResponse
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class JwtTokenResponse implements Response {

    String userId;
    String token;

}
