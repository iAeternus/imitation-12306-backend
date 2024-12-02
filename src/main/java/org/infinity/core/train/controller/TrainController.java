package org.infinity.core.train.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.infinity.core.train.model.dto.command.EnterTrainBatchCommand;
import org.infinity.core.train.model.dto.response.EnterTrainBatchResponse;
import org.infinity.core.train.service.TrainCommandService;
import org.springframework.http.HttpStatus;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/26
 * @className TrainController
 * @desc
 */
@Validated
@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/trains")
@Tag(name = "列车相关接口")
public class TrainController {

    private final TrainCommandService trainCommandService;

    @PostMapping("/enter")
    @Operation(summary = "批量录入列车信息")
    @ResponseStatus(HttpStatus.CREATED)
    public EnterTrainBatchResponse enterTrainBatch(@RequestBody @Valid EnterTrainBatchCommand command) {
        return trainCommandService.enterTrainBatch(command);
    }

}
