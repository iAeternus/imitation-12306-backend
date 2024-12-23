package org.infinity.core.verification.service;

import org.infinity.core.verification.model.dto.command.response.FetchVerificationCodeResponse;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/23
 * @className VerificationQueryService
 * @desc
 */
public interface VerificationQueryService {
    FetchVerificationCodeResponse fetchVerificationCode(String verificationCodeId);
}
