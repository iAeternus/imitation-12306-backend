package org.infinity.core.verification.model;

import com.baomidou.mybatisplus.annotation.EnumValue;
import lombok.Getter;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/9/23
 * @className VerificationCodeTypeEnum
 * @desc 验证码用于的类型
 */
@Getter
public enum VerificationCodeTypeEnum {

    REGISTER((short) 0),
    LOGIN((short) 1),
    FINDBACK_PASSWORD((short) 2),
    CHANGE_MOBILE((short) 3),
    IDENTIFY_MOBILE((short) 4),
    ;

    @EnumValue
    final Short key;

    VerificationCodeTypeEnum(Short key) {
        this.key = key;
    }
}
