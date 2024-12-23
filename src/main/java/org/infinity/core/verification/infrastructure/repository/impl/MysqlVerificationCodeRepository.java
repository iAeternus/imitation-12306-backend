package org.infinity.core.verification.infrastructure.repository.impl;

import com.baomidou.mybatisplus.core.conditions.query.Query;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import org.infinity.core.verification.infrastructure.mapper.VerificationCodeMapper;
import org.infinity.core.verification.infrastructure.repository.VerificationCodeRepository;
import org.infinity.core.verification.model.VerificationCodeTypeEnum;
import org.infinity.core.verification.model.po.VerificationCodePO;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Repository;

import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.temporal.ChronoUnit;
import java.util.List;
import java.util.Optional;

import static org.infinity.core.common.utils.ValidationUtils.requireNonBlank;
import static org.infinity.core.common.utils.ValidationUtils.requireNonNull;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/23
 * @className MysqlVerificationCodeRepository
 * @desc
 */
@Repository
@RequiredArgsConstructor
public class MysqlVerificationCodeRepository extends ServiceImpl<VerificationCodeMapper, VerificationCodePO> implements VerificationCodeRepository {
    @Override
    public Optional<VerificationCodePO> findValidOptional(String mobileOrEmail, String code, VerificationCodeTypeEnum type) {
        requireNonBlank(mobileOrEmail, "Mobile or email must not be blank.");
        requireNonBlank(code, "Code must not be blank.");
        requireNonNull(type, "Type must not be null.");

        VerificationCodePO verificationCode = lambdaQuery().eq(VerificationCodePO::getCode, code)
                .eq(VerificationCodePO::getMobileOrEmail, mobileOrEmail)
                .eq(VerificationCodePO::getType, type)
                .lt(VerificationCodePO::getUsedCount, 3)
                .ge(VerificationCodePO::getCreateAt, LocalDateTime.now().minusMinutes(10))
                .orderByDesc(VerificationCodePO::getCreateAt)
                .one();

        return Optional.ofNullable(verificationCode);
    }

    @Override
    public boolean existsWithinOneMinutes(String mobileOrEmail, VerificationCodeTypeEnum type) {
        requireNonBlank(mobileOrEmail, "Mobile or email must not be blank.");
        requireNonNull(type, "Type must not be null.");

        return lambdaQuery().eq(VerificationCodePO::getMobileOrEmail, mobileOrEmail)
                .eq(VerificationCodePO::getType, type.name())
                .ge(VerificationCodePO::getCreateAt, LocalDateTime.now().minusMinutes(1))
                .exists();
    }

    @Override
    public int totalCodeCountOfTodayFor(String mobileOrEmail) {
        requireNonBlank(mobileOrEmail, "Mobile or email must not be blank.");

        LocalDateTime beginOfToday = LocalDate.now().atStartOfDay().atZone(ZoneId.systemDefault()).toLocalDateTime();
        Long count = lambdaQuery().eq(VerificationCodePO::getMobileOrEmail, mobileOrEmail)
                .ge(VerificationCodePO::getCreateAt, beginOfToday)
                .count();
        return Math.toIntExact(count);
    }
}
