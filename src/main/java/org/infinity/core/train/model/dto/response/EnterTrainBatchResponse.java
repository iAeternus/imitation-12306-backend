package org.infinity.core.train.model.dto.response;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;
import org.infinity.core.common.domain.marker.Response;

import java.util.List;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/26
 * @className EnterTrainBatchResponse
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class EnterTrainBatchResponse implements Response {

    List<String> trainIds;

}
