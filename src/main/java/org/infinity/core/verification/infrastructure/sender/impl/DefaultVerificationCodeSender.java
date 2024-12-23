package org.infinity.core.verification.infrastructure.sender.impl;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.infinity.core.verification.infrastructure.sender.VerificationCodeSender;
import org.infinity.core.verification.model.po.VerificationCodePO;
import org.springframework.context.annotation.Profile;
import org.springframework.core.task.TaskExecutor;
import org.springframework.stereotype.Component;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/9/23
 * @className DefaultVerificationCodeSender
 * @desc 默认验证码发送器
 */
@Slf4j
@Component
@Profile("prod")
@RequiredArgsConstructor
public class DefaultVerificationCodeSender implements VerificationCodeSender {

    private final TaskExecutor taskExecutor;

    @Override
    public void send(VerificationCodePO code) {

    }
}
