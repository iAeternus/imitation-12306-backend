package org.infinity.core.trip.service;

import org.infinity.core.trip.model.dto.command.*;
import org.infinity.core.trip.model.dto.response.*;

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

    LateResponse late(LateCommand command);

    OnScheduleResponse onSchedule(OnScheduleCommand command);

    CancelResponse cancel(CancelCommand command);

    EndResponse end(EndCommand command);
}
