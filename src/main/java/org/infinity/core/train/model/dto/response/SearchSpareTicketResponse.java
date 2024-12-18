package org.infinity.core.train.model.dto.response;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;
import org.infinity.core.common.domain.marker.Response;
import org.infinity.core.train.model.CarriageLevelEnum;

import java.util.Map;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/17
 * @className SearchSpareTicketResponse
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class SearchSpareTicketResponse implements Response {

    Map<CarriageLevelEnum, Long> spareTicket;

}
