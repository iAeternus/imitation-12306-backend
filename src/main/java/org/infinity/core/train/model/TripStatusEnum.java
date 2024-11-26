package org.infinity.core.train.model;

import com.baomidou.mybatisplus.annotation.EnumValue;
import lombok.Getter;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/26
 * @className TripStatusEnum
 * @desc
 */
@Getter
public enum TripStatusEnum {

    ON_SCHEDULE((short) 0),
    BE_LATE((short) 1),
    CANCEL((short) 2),
    ;

    @EnumValue
    final Short key;

    TripStatusEnum(Short key) {
        this.key = key;
    }
}
