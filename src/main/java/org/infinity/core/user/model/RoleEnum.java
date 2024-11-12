package org.infinity.core.user.model;

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

    SYSTEM_ADMIN("系统管理员"),
    STUDENT("学生"),
    ADULT("成人"),
    ;

    private final String roleName;

    RoleEnum(String roleName) {
        this.roleName = roleName;
    }

}
