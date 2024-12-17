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

    void late(LateCommand command);

    void onSchedule(OnScheduleCommand command);

    void cancel(CancelCommand command);

    void end(EndCommand command);
}
