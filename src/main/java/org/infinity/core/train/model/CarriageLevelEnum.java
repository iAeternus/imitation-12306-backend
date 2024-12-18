package org.infinity.core.train.model;

import com.baomidou.mybatisplus.annotation.EnumValue;
import lombok.Getter;

import java.math.BigDecimal;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/3
 * @className CarriageLevelEnum
 * @desc
 */
@Getter
public enum CarriageLevelEnum {

    FIRST_CLASS((short) 0, BigDecimal.valueOf(1.2)),
    SECOND_CLASS((short) 1, BigDecimal.ONE),
    ;

    @EnumValue
    final Short key;
    final BigDecimal rate;

    CarriageLevelEnum(Short key, BigDecimal rate) {
        this.key = key;
        this.rate = rate;
    }

    public static CarriageLevelEnum of(Short level) {
        return switch (level) {
            case 0 -> FIRST_CLASS;
            case 1 -> SECOND_CLASS;
            default -> throw new IllegalStateException("Unexpected value: " + level);
        };
    }
}
