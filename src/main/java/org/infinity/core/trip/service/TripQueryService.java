package org.infinity.core.trip.service;

import org.infinity.core.common.domain.page.PageResponse;
import org.infinity.core.trip.model.dto.query.TripPageQuery;
import org.infinity.core.trip.model.dto.response.SearchPriceResponse;
import org.infinity.core.trip.model.dto.response.TripResponse;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/26
 * @className TripQueryService
 * @desc
 */
public interface TripQueryService {
    PageResponse<TripResponse> pages(TripPageQuery pageQuery);

    TripResponse byId(String tripId);

    SearchPriceResponse searchPrices(String tripId);
}
