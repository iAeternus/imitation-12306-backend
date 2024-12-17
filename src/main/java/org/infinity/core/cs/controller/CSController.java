package org.infinity.core.cs.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.infinity.core.common.validation.id.cs.CSId;
import org.infinity.core.cs.model.dto.command.EnterCSBatchCommand;
import org.infinity.core.cs.model.dto.response.ByIdResponse;
import org.infinity.core.cs.model.dto.response.EnterCSBatchResponse;
import org.infinity.core.cs.service.CSCommandService;
import org.infinity.core.cs.service.CSQueryService;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/16
 * @className CSController
 * @desc
 */
@Validated
@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/cs")
@Tag(name = "在线客服相关接口")
public class CSController {

    private final CSCommandService csCommandService;
    private final CSQueryService csQueryService;

    @PostMapping("/enter-batch")
    @Operation(summary = "批量录入在线客服信息")
    public EnterCSBatchResponse enterCSBatch(@RequestBody @Valid EnterCSBatchCommand command) {
        return csCommandService.enterCSBatch(command);
    }

    @GetMapping("/{csId}")
    @Operation(summary = "根据ID查询在线客服信息")
    public ByIdResponse byId(@PathVariable("csId") @CSId String csId) {
        return csQueryService.byId(csId);
    }

}
