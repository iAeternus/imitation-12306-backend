package org.infinity.core.train.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.infinity.core.common.model.page.PageResponse;
import org.infinity.core.train.model.dto.command.EnterTripBatchCommand;
import org.infinity.core.train.model.dto.query.TripPageQuery;
import org.infinity.core.train.model.dto.response.EnterTripBatchResponse;
import org.infinity.core.train.model.dto.response.TripPageResponse;
import org.infinity.core.train.service.TripCommandService;
import org.infinity.core.train.service.TripQueryService;
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

    @PostMapping("/pages")
    @Operation(summary = "分页查询车次信息")
    public PageResponse<TripPageResponse> pages(@RequestBody @Valid TripPageQuery pageQuery) {
        return tripQueryService.pages(pageQuery);
    }

}
