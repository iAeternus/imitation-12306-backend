package org.infinity.core.common.domain.pricecalculate.promotion;

import lombok.Builder;
import lombok.Data;
import org.infinity.core.user.model.RoleEnum;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className PromotionContext
 * @desc 价格优惠上下文
 */
@Data
@Builder
public class PromotionContext {

    /**
     * 用户身份
     */
    private RoleEnum role;

    // TODO add here...

}
