package org.infinity.core.trip.service;

import org.infinity.core.trip.model.dto.response.ListTripStationsResponse;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/17
 * @className TripStationQueryService
 * @desc
 */
public interface TripStationQueryService {
    ListTripStationsResponse listTripStations(String tripId);
}
