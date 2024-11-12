package org.infinity.core.common.exception;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;
import org.infinity.core.common.model.marker.Response;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/9/25
 * @className QErrorResponse
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class QErrorResponse implements Response {

    MyError error;

}
