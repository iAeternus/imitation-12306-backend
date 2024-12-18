package org.infinity.core.common.domain.pricecalculate.promotion.impl;

import org.infinity.core.common.domain.pricecalculate.promotion.PromotionContext;
import org.infinity.core.common.domain.pricecalculate.promotion.PromotionStrategy;
import org.infinity.core.user.model.RoleEnum;

import java.math.BigDecimal;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className StudentPromotionStrategy
 * @desc 学生优惠策略，学生打八折
 */
public class StudentPromotionStrategy implements PromotionStrategy {
    @Override
    public boolean canPromote(PromotionContext context) {
        return context.getRole() == RoleEnum.STUDENT;
    }

    @Override
    public BigDecimal promote(BigDecimal originPrice, PromotionContext context) {
        return originPrice.multiply(BigDecimal.valueOf(0.8));
    }
}
