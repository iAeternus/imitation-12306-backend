package org.infinity.core.verification.service.impl;

import lombok.RequiredArgsConstructor;
import org.infinity.common.ratelimit.RateLimiter;
import org.infinity.core.verification.infrastructure.repository.VerificationCodeRepository;
import org.infinity.core.verification.model.dto.command.response.FetchVerificationCodeResponse;
import org.infinity.core.verification.model.po.VerificationCodePO;
import org.infinity.core.verification.service.VerificationQueryService;
import org.springframework.stereotype.Service;

import static org.infinity.core.common.constants.I12306Constants.DEFAULT_QUERY_TPS;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/23
 * @className VerificationQueryServiceImpl
 * @desc
 */
@Service
@RequiredArgsConstructor
public class VerificationQueryServiceImpl implements VerificationQueryService {

    private final VerificationCodeRepository verificationCodeRepository;
    private final RateLimiter rateLimiter;

    @Override
    public FetchVerificationCodeResponse fetchVerificationCode(String verificationCodeId) {
        rateLimiter.applyFor("VerificationCode:fetchVerificationCode", DEFAULT_QUERY_TPS);

        VerificationCodePO verificationCode = verificationCodeRepository.fetchById(verificationCodeId);
        return FetchVerificationCodeResponse.builder()
                .userId(verificationCode.getUserId())
                .mobileOrEmail(verificationCode.getMobileOrEmail())
                .code(verificationCode.getCode())
                .type(verificationCode.getType())
                .usedCount(verificationCode.getUsedCount())
                .build();
    }
}
