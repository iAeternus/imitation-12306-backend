package org.infinity.core.order.model;

import com.baomidou.mybatisplus.annotation.EnumValue;
import lombok.Getter;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className SeatLevelEnum
 * @desc 座位等级
 */
@Getter
public enum SeatLevelEnum {

    BUSINESS_CLASS((short) 0),
    FIRST_CLASS((short) 1),
    SECOND_CLASS((short) 2),
    ;

    @EnumValue
    final Short key;

    SeatLevelEnum(Short key) {
        this.key = key;
    }

    public static SeatLevelEnum of(Integer value) {
        return switch (value) {
            case 0 -> BUSINESS_CLASS;
            case 1 -> FIRST_CLASS;
            case 2 -> SECOND_CLASS;
            default -> throw new IllegalStateException("Unexpected value: " + value);
        };
    }

}
