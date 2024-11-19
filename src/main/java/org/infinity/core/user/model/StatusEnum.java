package org.infinity.core.user.model;

import com.baomidou.mybatisplus.annotation.EnumValue;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/8
 * @className StatusEnum
 * @desc
 */
public enum StatusEnum {

    NO_REAL_NAME_AUTHENTICATION((short) 0),
    AUTHENTICATED_BY_REAL_NAME((short) 1),
    ;

    @EnumValue
    final Short key;

    StatusEnum(Short key) {
        this.key = key;
    }
}
