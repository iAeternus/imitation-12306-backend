package org.infinity.core.trip.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.infinity.core.train.model.dto.query.SearchSpareTicketQuery;
import org.infinity.core.train.model.dto.response.SearchSpareTicketResponse;
import org.infinity.core.trip.service.TripSeatQueryService;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/3
 * @className TripSeatController
 * @desc
 */
@Validated
@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/trip-seats")
@Tag(name = "车次座位相关接口")
public class TripSeatController {

    private final TripSeatQueryService tripSeatQueryService;

    @PostMapping("/spare/ticket")
    @Operation(summary = "查询所有等级座位的余票个数")
    public SearchSpareTicketResponse searchSpareTicket(@RequestBody @Valid SearchSpareTicketQuery query) {
        return tripSeatQueryService.searchSpareTicket(query);
    }

}
