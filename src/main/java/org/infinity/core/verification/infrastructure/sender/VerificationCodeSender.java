package org.infinity.core.verification.infrastructure.sender;

import org.infinity.core.verification.model.po.VerificationCodePO;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/9/23
 * @className VerificationCodeSender
 * @desc 验证码发送器
 */
public interface VerificationCodeSender {

    /**
     * 发送验证码
     *
     * @param code 验证码
     */
    void send(VerificationCodePO code);

}
