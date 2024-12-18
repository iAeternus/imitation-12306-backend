package org.infinity.core.trip.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.infinity.core.common.domain.page.PageResponse;
import org.infinity.core.common.validation.id.trip.TripId;
import org.infinity.core.trip.model.dto.command.*;
import org.infinity.core.trip.model.dto.query.TripPageQuery;
import org.infinity.core.trip.model.dto.response.*;
import org.infinity.core.trip.service.TripCommandService;
import org.infinity.core.trip.service.TripQueryService;
import org.springframework.http.HttpStatus;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/26
 * @className TripController
 * @desc
 */
@Validated
@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/trips")
@Tag(name = "车次相关接口")
public class TripController {

    private final TripCommandService tripCommandService;
    private final TripQueryService tripQueryService;

    @PostMapping("/enter-batch")
    @Operation(summary = "批量录入车次信息")
    @ResponseStatus(HttpStatus.CREATED)
    public EnterTripBatchResponse enterTripBatch(@RequestBody @Valid EnterTripBatchCommand command) {
        return tripCommandService.enterTripBatch(command);
    }

    @PostMapping("/enter-trip-stations")
    @Operation(summary = "补充车次的车次站点信息")
    @ResponseStatus(HttpStatus.CREATED)
    public EnterTripStationsResponse enterTripStations(@RequestBody @Valid EnterTripStationsCommand command) {
        return tripCommandService.enterTripStations(command);
    }

    @PostMapping("/late")
    @Operation(summary = "晚点")
    public void late(@RequestBody @Valid LateCommand command) {
        tripCommandService.late(command);
    }

    @PostMapping("/on-schedule")
    @Operation(summary = "恢复正点")
    public void onSchedule(@RequestBody @Valid OnScheduleCommand command) {
        tripCommandService.onSchedule(command);
    }

    @PostMapping("/cancel")
    @Operation(summary = "取消车次")
    public void cancel(@RequestBody @Valid CancelCommand command) {
        tripCommandService.cancel(command);
    }

    @PostMapping("/end")
    @Operation(summary = "车次结束")
    public void end(@RequestBody @Valid EndCommand command) {
        tripCommandService.end(command);
    }

    @PostMapping("/pages")
    @Operation(summary = "分页查询车次信息")
    public PageResponse<TripResponse> pages(@RequestBody @Valid TripPageQuery pageQuery) {
        return tripQueryService.pages(pageQuery);
    }

    @GetMapping("/{tripId}")
    @Operation(summary = "根据ID查询车次信息")
    public TripResponse byId(@PathVariable @TripId String tripId) {
        return tripQueryService.byId(tripId);
    }

    @GetMapping("/prices/{tripId}")
    @Operation(summary = "查询所有座位类型的票价，默认成人票价")
    public SearchPriceResponse searchPrices(@PathVariable("tripId") @TripId String tripId) {
        return tripQueryService.searchPrices(tripId);
    }

}
