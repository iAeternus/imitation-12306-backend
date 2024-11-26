package org.infinity.core.train.service;

import org.infinity.core.common.model.page.PageResponse;
import org.infinity.core.train.model.dto.command.EnterTripBatchCommand;
import org.infinity.core.train.model.dto.query.TripPageQuery;
import org.infinity.core.train.model.dto.response.EnterTripBatchResponse;
import org.infinity.core.train.model.dto.response.TripPageResponse;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/26
 * @className TripCommandService
 * @desc
 */
public interface TripCommandService {
    EnterTripBatchResponse enterTripBatch(EnterTripBatchCommand command);
}
