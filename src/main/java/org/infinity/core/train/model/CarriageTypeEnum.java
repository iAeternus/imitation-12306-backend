package org.infinity.core.train.model;

import com.baomidou.mybatisplus.annotation.EnumValue;
import lombok.Getter;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/3
 * @className CarriageTypeEnum
 * @desc
 */
@Getter
public enum CarriageTypeEnum {

    PASSENGER_CARRIAGE((short) 0),
    FREIGHT_CARRIAGE((short) 1),
    ;

    @EnumValue
    final Short key;

    CarriageTypeEnum(Short key) {
        this.key = key;
    }
}
