package org.infinity.core.common.domain.pricecalculate;

import org.infinity.core.common.domain.pricecalculate.promotion.PromotionContext;
import org.infinity.core.common.domain.pricecalculate.promotion.PromotionStrategy;
import org.infinity.core.common.domain.pricecalculate.promotion.impl.NoPromotionStrategy;
import org.infinity.core.common.domain.pricecalculate.promotion.impl.StudentPromotionStrategy;
import org.springframework.stereotype.Component;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className PriceCalculateHandler
 * @desc
 */
@Component
public class PriceCalculateHandler {

    private static final List<PromotionStrategy> STRATEGIES = new ArrayList<>();

    static {
        STRATEGIES.add(new NoPromotionStrategy());
        STRATEGIES.add(new StudentPromotionStrategy());
    }

    /**
     * 计算最终价格
     *
     * @param priceContext     价格上下文
     * @param promotionContext 优惠上下文
     * @return 最终价格
     */
    public BigDecimal calculatePrice(PriceContext priceContext, PromotionContext promotionContext) {
        AtomicReference<BigDecimal> price = new AtomicReference<>(calculateBasicPrice(priceContext));
        for (PromotionStrategy strategy : STRATEGIES) {
            if (price.get().compareTo(BigDecimal.ZERO) < 0) {
                price.set(BigDecimal.ZERO);
                break;
            }
            if (strategy.canPromote(promotionContext)) {
                price.set(strategy.promote(price.get(), promotionContext));
            }
        }
        return price.get();
    }

    /**
     * 计算原始价格，暂时按照站点个数计价
     *
     * @param context 价格上下文
     * @return 原始价格
     */
    private BigDecimal calculateBasicPrice(PriceContext context) {
        BigDecimal basePrice = BigDecimal.valueOf((context.getTripStations().size() - 1) * 29L);
        return basePrice.multiply(context.getLevel().getRate());
    }

}
