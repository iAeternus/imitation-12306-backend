package org.infinity.core.verification.infrastructure.factory;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.infinity.core.common.exception.MyException;
import org.infinity.core.user.infrastructure.repository.UserRepository;
import org.infinity.core.verification.infrastructure.repository.VerificationCodeRepository;
import org.infinity.core.verification.model.VerificationCodeTypeEnum;
import org.infinity.core.verification.model.po.VerificationCodePO;
import org.springframework.stereotype.Component;

import java.util.Optional;

import static org.infinity.core.common.exception.ErrorCodeEnum.TOO_MANY_VERIFICATION_CODE_FOR_TODAY;
import static org.infinity.core.common.exception.ErrorCodeEnum.VERIFICATION_CODE_ALREADY_SENT;
import static org.infinity.core.common.utils.CommonUtils.maskMobileOrEmail;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/9/24
 * @className VerificationCodeFactory
 * @desc
 */
@Slf4j
@Component
@RequiredArgsConstructor
public class VerificationCodeFactory {

    private final VerificationCodeRepository verificationCodeRepository;

    public Optional<VerificationCodePO> create(String mobileOrEmail, VerificationCodeTypeEnum type, String userId) {
        try {
            if (verificationCodeRepository.existsWithinOneMinutes(mobileOrEmail, type)) {
                throw new MyException(VERIFICATION_CODE_ALREADY_SENT, "1分钟内只能获取一次验证码。", "mobileOrEmail",
                        maskMobileOrEmail(mobileOrEmail));
            }

            if (verificationCodeRepository.totalCodeCountOfTodayFor(mobileOrEmail) > 20) {
                throw new MyException(TOO_MANY_VERIFICATION_CODE_FOR_TODAY, "验证码获取次数超过当天限制。", "mobileOrEmail",
                        maskMobileOrEmail(mobileOrEmail));
            }

            return Optional.of(new VerificationCodePO(mobileOrEmail, type, userId));
        } catch (MyException BcrException) {
            log.warn("Error while create verification code: {}.", BcrException.getMessage());
            return Optional.empty();
        }
    }
}
