package org.infinity.core.verification.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.infinity.core.common.domain.ReturnId;
import org.infinity.core.verification.model.dto.command.CreateChangeMobileVerificationCodeCommand;
import org.infinity.core.verification.service.VerificationService;
import org.springframework.http.HttpStatus;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/23
 * @className VerificationController
 * @desc
 */
@Validated
@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/verifications")
@Tag(name = "验证码相关接口")
public class VerificationController {

    private final VerificationService verificationService;

    @ResponseStatus(HttpStatus.CREATED)
    @PostMapping("/for-change-mobile")
    @Operation(summary = "为修改手机号创建验证码")
    public ReturnId createVerificationCodeForChangeMobile(@RequestBody @Valid CreateChangeMobileVerificationCodeCommand command) {
        String verificationCodeId = verificationService.createVerificationCodeForChangeMobile(command);
        return ReturnId.returnId(verificationCodeId);
    }

}
