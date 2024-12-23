package org.infinity.core.verification.infrastructure.repository;

import com.baomidou.mybatisplus.extension.service.IService;
import org.infinity.core.verification.model.VerificationCodeTypeEnum;
import org.infinity.core.verification.model.po.VerificationCodePO;

import java.util.Optional;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/23
 * @className VerificationCodeRepository
 * @desc
 */
public interface VerificationCodeRepository extends IService<VerificationCodePO> {
    Optional<VerificationCodePO> findValidOptional(String mobileOrEmail, String code, VerificationCodeTypeEnum type);

    boolean existsWithinOneMinutes(String mobileOrEmail, VerificationCodeTypeEnum type);

    int totalCodeCountOfTodayFor(String mobileOrEmail);
}
