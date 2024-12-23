package org.infinity.core.verification.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.infinity.core.common.domain.ReturnId;
import org.infinity.core.common.validation.id.verificationcode.VerificationCodeId;
import org.infinity.core.verification.model.dto.command.CreateChangeMobileVerificationCodeCommand;
import org.infinity.core.verification.model.dto.command.response.FetchVerificationCodeResponse;
import org.infinity.core.verification.service.VerificationCommandService;
import org.infinity.core.verification.service.VerificationQueryService;
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

    private final VerificationCommandService verificationCommandService;
    private final VerificationQueryService verificationQueryService;

    @ResponseStatus(HttpStatus.CREATED)
    @PostMapping("/for-change-mobile")
    @Operation(summary = "为修改手机号创建验证码")
    public ReturnId createVerificationCodeForChangeMobile(@RequestBody @Valid CreateChangeMobileVerificationCodeCommand command) {
        String verificationCodeId = verificationCommandService.createVerificationCodeForChangeMobile(command);
        return ReturnId.returnId(verificationCodeId);
    }

    @GetMapping("/fetch/{verificationCodeId}")
    @Operation(summary = "根据ID获取验证码")
    public FetchVerificationCodeResponse fetchVerificationCode(@PathVariable @VerificationCodeId String verificationCodeId) {
        return verificationQueryService.fetchVerificationCode(verificationCodeId);
    }

}
