package org.infinity.core.order.model;

import com.baomidou.mybatisplus.annotation.EnumValue;
import lombok.Getter;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className OrderStatusEnum
 * @desc
 */
@Getter
public enum OrderStatusEnum {

    TO_BE_PAID((short) 0, "待支付"),
    ALREADY_PAID((short) 1, "已支付"),
    ON_BOARD((short) 2, "已上车"),
    OUT_OF_STATION((short) 3, "已出站"),
    // TODO 已退票
    ;

    @EnumValue
    final Short key;
    final String val;

    OrderStatusEnum(Short key, String val) {
        this.key = key;
        this.val = val;
    }
}
