package org.infinity.core.order.model.dto.response;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;
import org.infinity.core.common.domain.marker.Response;
import org.infinity.core.order.model.dto.OrderDetail;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/17
 * @className SearchOrderDetailResponse
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class SearchOrderDetailResponse implements Response {

    OrderDetail orderDetail;

}
