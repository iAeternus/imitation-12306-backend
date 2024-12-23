package org.infinity.core.verification.infrastructure.checker;

import lombok.RequiredArgsConstructor;
import org.infinity.core.common.exception.MyException;
import org.infinity.core.verification.infrastructure.repository.VerificationCodeRepository;
import org.infinity.core.verification.model.VerificationCodeTypeEnum;
import org.infinity.core.verification.model.po.VerificationCodePO;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import static org.infinity.core.common.exception.ErrorCodeEnum.VERIFICATION_CODE_CHECK_FAILED;
import static org.infinity.core.common.utils.CommonUtils.maskMobileOrEmail;


/**
 * @author Ricky
 * @version 1.0
 * @date 2024/9/24
 * @className VerificationCodeChecker
 * @desc 验证码检查器
 */
@Component
@RequiredArgsConstructor
public class VerificationCodeChecker {

    private final VerificationCodeRepository verificationCodeRepository;

    /**
     * 检查验证码<br>
     * REQUIRES_NEW表示无论最终结果成败，只要check了一次，便标记使用一次
     *
     * @param mobileOrEmail 手机号或邮箱
     * @param code          验证码
     * @param type          验证码用于的类型
     */
    @Transactional(propagation = Propagation.REQUIRES_NEW)
    public void check(String mobileOrEmail, String code, VerificationCodeTypeEnum type) {
        VerificationCodePO verificationCode = verificationCodeRepository.findValidOptional(mobileOrEmail, code, type)
                .orElseThrow(() -> new MyException(VERIFICATION_CODE_CHECK_FAILED, "验证码验证失败。", "mobileOrEmail", maskMobileOrEmail(mobileOrEmail)));
        verificationCode.use();
        verificationCodeRepository.updateById(verificationCode);
    }

}
