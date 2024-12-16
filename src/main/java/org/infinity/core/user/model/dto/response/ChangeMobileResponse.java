package org.infinity.core.user.model.dto.response;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;
import org.infinity.core.common.model.marker.Response;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/16
 * @className ChangeMobileResponse
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class ChangeMobileResponse implements Response {

    String oldMobile;

}
