package org.infinity.core.common.domain.pricecalculate.promotion;

import java.math.BigDecimal;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className PromotionStrategy
 * @desc 价格优惠策略
 */
public interface PromotionStrategy {

    /**
     * 判断是否能进行该项优惠
     *
     * @param context 价格优惠上下文
     * @return true=能优惠 false=不能优惠
     */
    boolean canPromote(PromotionContext context);

    /**
     * 计算优惠后的价格
     *
     * @param originPrice 原价
     * @param context     价格优惠上下文
     * @return 优惠后的价格
     */
    BigDecimal promote(BigDecimal originPrice, PromotionContext context);

}
