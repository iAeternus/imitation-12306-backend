package org.infinity.core.train.service;

import org.infinity.core.train.model.dto.command.EnterTripBatchCommand;
import org.infinity.core.train.model.dto.command.EnterTripStationsCommand;
import org.infinity.core.train.model.dto.response.EnterTripBatchResponse;
import org.infinity.core.train.model.dto.response.EnterTripStationsResponse;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/26
 * @className TripCommandService
 * @desc
 */
public interface TripCommandService {
    EnterTripBatchResponse enterTripBatch(EnterTripBatchCommand command);

    EnterTripStationsResponse enterTripStations(EnterTripStationsCommand command);
}
