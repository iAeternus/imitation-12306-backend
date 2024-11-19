package org.infinity.core.user.model;

import com.baomidou.mybatisplus.annotation.EnumValue;
import lombok.Getter;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/5
 * @className RoleEnum
 * @desc
 */
@Getter
public enum RoleEnum {

    SYSTEM_ADMIN((short) 0, "系统管理员"),
    STUDENT((short) 1, "学生"),
    ADULT((short) 2, "成人"),
    ;

    @EnumValue
    final Short key;
    final String roleName;

    RoleEnum(Short key, String roleName) {
        this.key = key;
        this.roleName = roleName;
    }

}
