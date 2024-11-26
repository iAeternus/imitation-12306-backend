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

    ON_SCHEDULE((short) 0, "正点"),
    BE_LATE((short) 1, "晚点"),
    CANCEL((short) 2, "取消"),
    ;

    @EnumValue
    final Short key;
    final String desc;

    TripStatusEnum(Short key, String desc) {
        this.key = key;
        this.desc = desc;
    }
}
