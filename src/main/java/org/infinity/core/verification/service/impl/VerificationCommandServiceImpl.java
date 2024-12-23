package org.infinity.core.verification.service.impl;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.infinity.common.ratelimit.RateLimiter;
import org.infinity.core.user.infrastructure.repository.UserRepository;
import org.infinity.core.verification.infrastructure.factory.VerificationCodeFactory;
import org.infinity.core.verification.infrastructure.repository.VerificationCodeRepository;
import org.infinity.core.verification.infrastructure.sender.VerificationCodeSender;
import org.infinity.core.verification.model.VerificationCodeTypeEnum;
import org.infinity.core.verification.model.dto.command.CreateChangeMobileVerificationCodeCommand;
import org.infinity.core.verification.model.po.VerificationCodePO;
import org.infinity.core.verification.service.VerificationCommandService;
import org.springframework.stereotype.Service;

import java.util.Optional;

import static org.infinity.core.common.utils.CommonUtils.maskMobileOrEmail;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/23
 * @className VerificationCommandServiceImpl
 * @desc
 */
@Slf4j
@Service
@RequiredArgsConstructor
public class VerificationCommandServiceImpl implements VerificationCommandService {

    private final VerificationCodeRepository verificationCodeRepository;
    private final UserRepository userRepository;
    private final VerificationCodeSender verificationCodeSender;
    private final VerificationCodeFactory verificationCodeFactory;
    private final RateLimiter rateLimiter;

    @Override
    public String createVerificationCodeForChangeMobile(CreateChangeMobileVerificationCodeCommand command) {
        String mobile = command.getMobile();
        rateLimiter.applyFor("VerificationCode:Register:All", 20);
        rateLimiter.applyFor("VerificationCode:Register:" + mobile, 1);

        if (userRepository.existsByMobile(mobile)) {
            log.warn("[{}] already exists for register.", maskMobileOrEmail(mobile));
            return VerificationCodePO.newVerificationCodeId();
        }

        String verificationCodeId = createVerificationCode(mobile, VerificationCodeTypeEnum.CHANGE_MOBILE, command.getUserId());
        log.info("Created verification code[{}] for register for [{}].", verificationCodeId, maskMobileOrEmail(command.getMobile()));
        return verificationCodeId;
    }

    private String createVerificationCode(String mobileOrEmail, VerificationCodeTypeEnum type, String userId) {
        Optional<VerificationCodePO> verificationCodeOptional = verificationCodeFactory.create(mobileOrEmail, type, userId);
        if (verificationCodeOptional.isPresent()) {
            VerificationCodePO code = verificationCodeOptional.get();
            verificationCodeRepository.save(code);
            verificationCodeSender.send(code);
            return code.getId();
        } else {
            return VerificationCodePO.newVerificationCodeId();
        }
    }
}
