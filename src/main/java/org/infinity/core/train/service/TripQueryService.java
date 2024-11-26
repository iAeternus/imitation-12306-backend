package org.infinity.core.train.service;

import org.infinity.core.common.model.page.PageResponse;
import org.infinity.core.train.model.dto.query.TripPageQuery;
import org.infinity.core.train.model.dto.response.TripPageResponse;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/26
 * @className TripQueryService
 * @desc
 */
public interface TripQueryService {
    PageResponse<TripPageResponse> pages(TripPageQuery pageQuery);
}
