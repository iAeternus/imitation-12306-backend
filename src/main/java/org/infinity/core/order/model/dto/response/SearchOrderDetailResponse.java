package org.infinity.core.order.model.dto.response;

import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;
import org.infinity.core.common.model.marker.Response;
import org.infinity.core.order.model.dto.OrderDetail;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

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
