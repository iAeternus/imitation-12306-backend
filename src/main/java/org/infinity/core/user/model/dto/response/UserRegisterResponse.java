package org.infinity.core.user.model.dto.response;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;
import org.infinity.core.common.domain.marker.Response;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/19
 * @className UserRegisterResponse
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class UserRegisterResponse implements Response {

    String userId;

}
