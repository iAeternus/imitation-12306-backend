package org.infinity.core.train.model.dto.response;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;
import org.infinity.core.common.model.marker.Response;

import java.util.List;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/11
 * @className EnterCarriageResponse
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class EnterCarriageResponse implements Response {

    List<String> carriageIds;

}
