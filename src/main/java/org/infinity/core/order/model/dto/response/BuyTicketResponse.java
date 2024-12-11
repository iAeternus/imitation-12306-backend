package org.infinity.core.order.model.dto.response;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;
import org.infinity.core.common.model.marker.Response;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/3
 * @className BuyTicketResponse
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class BuyTicketResponse implements Response {

    String orderId;

}
