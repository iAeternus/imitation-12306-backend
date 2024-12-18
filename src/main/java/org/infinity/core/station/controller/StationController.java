package org.infinity.core.station.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.infinity.core.station.model.dto.response.ListAllResponse;
import org.infinity.core.station.serivce.StationQueryService;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/18
 * @className StationController
 * @desc
 */
@Validated
@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/stations")
@Tag(name = "站点相关接口")
public class StationController {

    private final StationQueryService stationQueryService;

    @GetMapping
    @Operation(summary = "获取所有站点")
    public ListAllResponse listAll() {
        return stationQueryService.listAll();
    }

}
