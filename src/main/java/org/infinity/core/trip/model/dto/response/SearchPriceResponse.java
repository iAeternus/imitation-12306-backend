package org.infinity.core.trip.model.dto.response;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;
import org.infinity.core.common.domain.marker.Response;

import java.math.BigDecimal;
import java.util.Map;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/18
 * @className SearchPriceResponse
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class SearchPriceResponse implements Response {

    @Schema(name = "价格，键-车厢等级 值-价格")
    Map<Short, BigDecimal> prices;

}
