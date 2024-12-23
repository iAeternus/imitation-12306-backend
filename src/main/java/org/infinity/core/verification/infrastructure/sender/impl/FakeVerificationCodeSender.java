package org.infinity.core.verification.infrastructure.sender.impl;


import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.infinity.core.verification.infrastructure.sender.VerificationCodeSender;
import org.infinity.core.verification.model.po.VerificationCodePO;
import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Component;


/**
 * @author Ricky
 * @version 1.0
 * @date 2024/9/26
 * @className FakeVerificationCodeSender
 * @desc
 */
@Slf4j
@Component
@Profile("!prod")
@RequiredArgsConstructor
public class FakeVerificationCodeSender implements VerificationCodeSender {

    @Override
    public void send(VerificationCodePO code) {
        String mobileOrEmail = code.getMobileOrEmail();
        log.info("Verification code for {} is {}", mobileOrEmail, code.getCode());
    }
}
