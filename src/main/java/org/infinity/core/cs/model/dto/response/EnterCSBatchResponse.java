package org.infinity.core.cs.model.dto.response;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;
import org.infinity.core.common.domain.marker.Response;

import java.util.List;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/17
 * @className EnterCSBatchResponse
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class EnterCSBatchResponse implements Response {

    List<String> csIds;

}
