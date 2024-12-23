package org.infinity.core.trip.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.infinity.core.common.validation.id.trip.TripId;
import org.infinity.core.trip.model.dto.response.ListTripStationsResponse;
import org.infinity.core.trip.service.TripStationQueryService;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/17
 * @className TripStationController
 * @desc
 */
@Validated
@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/trip-station")
@Tag(name = "车次站点相关接口")
public class TripStationController {

    private final TripStationQueryService tripStationQueryService;

    @GetMapping("/list-trip-stations/{tripId}")
    @Operation(summary = "车次站点查询")
    public ListTripStationsResponse listTripStations(@PathVariable("tripId") @TripId String tripId) {
        return tripStationQueryService.listTripStations(tripId);
    }

}
