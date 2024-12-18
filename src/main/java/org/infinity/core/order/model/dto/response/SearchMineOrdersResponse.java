package org.infinity.core.order.model.dto.response;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;
import org.infinity.core.common.domain.marker.Response;

import java.util.List;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/18
 * @className SearchMineOrdersResponse
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class SearchMineOrdersResponse implements Response {

    List<String> orderIds;

}
