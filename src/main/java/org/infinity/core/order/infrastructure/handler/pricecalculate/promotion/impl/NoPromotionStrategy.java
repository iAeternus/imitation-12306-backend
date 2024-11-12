package org.infinity.core.order.infrastructure.handler.pricecalculate.promotion.impl;

import org.infinity.core.order.infrastructure.handler.pricecalculate.promotion.PromotionContext;
import org.infinity.core.order.infrastructure.handler.pricecalculate.promotion.PromotionStrategy;
import org.infinity.core.user.model.RoleEnum;

import java.math.BigDecimal;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className NoPromotionStrategy
 * @desc
 */
public class NoPromotionStrategy implements PromotionStrategy {
    @Override
    public boolean canPromote(PromotionContext context) {
        return context.getRole() == RoleEnum.ADULT;
    }

    @Override
    public BigDecimal promote(BigDecimal originPrice, PromotionContext context) {
        return originPrice;
    }
}
