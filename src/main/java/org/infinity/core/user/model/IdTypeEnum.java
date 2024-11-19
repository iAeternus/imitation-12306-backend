package org.infinity.core.user.model;

import com.baomidou.mybatisplus.annotation.EnumValue;
import lombok.Getter;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/8
 * @className IdTypeEnum
 * @desc
 */
@Getter
public enum IdTypeEnum {

    IDENTITY_CARD((short) 0),
    HONG_KONG_AND_MACAO_PASS((short) 1),
    ;

    @EnumValue
    final Short key;

    IdTypeEnum(Short key) {
        this.key = key;
    }
}
