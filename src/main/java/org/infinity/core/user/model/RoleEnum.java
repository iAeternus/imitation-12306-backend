package org.infinity.core.user.model;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/5
 * @className RoleEnum
 * @desc
 */
public enum RoleEnum {

    SYSTEM_ADMIN("系统管理员"),
    ORDINARY_MEMBER("普通成员"),
    ROBOT("API账号"),
    ;

    private final String roleName;

    RoleEnum(String roleName) {
        this.roleName = roleName;
    }

}
