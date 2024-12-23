package org.infinity.core.verification.service;

import org.infinity.core.verification.model.dto.command.CreateChangeMobileVerificationCodeCommand;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/23
 * @className VerificationCommandService
 * @desc
 */
public interface VerificationCommandService {
    String createVerificationCodeForChangeMobile(CreateChangeMobileVerificationCodeCommand command);
}
