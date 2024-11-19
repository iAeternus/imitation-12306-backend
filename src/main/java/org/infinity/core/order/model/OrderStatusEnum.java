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

    TO_BE_PAID((short) 0),
    ALREADY_PAID((short) 1),
    ON_BOARD((short) 2),
    OUT_OF_STATION((short) 3),
    ;

    @EnumValue
    final Short key;

    OrderStatusEnum(Short key) {
        this.key = key;
    }
}
