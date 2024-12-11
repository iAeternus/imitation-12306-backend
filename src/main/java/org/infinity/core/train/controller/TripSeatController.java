package org.infinity.core.train.controller;

import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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

    // TODO 给定车次，查询所有等级座位的余票个数

}
