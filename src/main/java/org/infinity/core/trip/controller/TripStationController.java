package org.infinity.core.trip.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.infinity.core.common.validation.id.trip.TripId;
import org.infinity.core.trip.model.dto.command.FetchTripStationIdCommand;
import org.infinity.core.trip.model.dto.response.FetchTripStationIdResponse;
import org.infinity.core.trip.model.dto.response.ListTripStationsResponse;
import org.infinity.core.trip.service.TripStationQueryService;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

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

    @PostMapping("/fetch/trip-station-id")
    @Operation(summary = "根据车次ID和站点ID获取车次站点ID")
    public FetchTripStationIdResponse fetchTripStationId(@RequestBody @Valid FetchTripStationIdCommand command) {
        return tripStationQueryService.fetchTripStationId(command);
    }

}
