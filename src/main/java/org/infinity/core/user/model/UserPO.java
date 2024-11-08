package org.infinity.core.user.model;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.time.LocalDateTime;

import static org.infinity.core.common.utils.ValidationUtils.*;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/5
 * @className UserPO
 * @desc
 */
@Data
@AllArgsConstructor
public class UserPO {

    /**
     * 无信息用户
     */
    @TableField(exist = false)
    public static final UserPO NOUSER = noUser();

    /**
     * 匿名用户
     */
    @TableField(exist = false)
    public static final UserPO ANONYMOUS_USER = NOUSER;

    /**
     * id
     */
    @TableId
    private String id;

    /**
     * 昵称
     */
    private String nickname;

    /**
     * 实名
     */
    private String realName;

    /**
     * 证件类型
     */
    private IdTypeEnum idType;

    /**
     * 身份证号
     */
    private String idCard;

    /**
     * 手机号
     */
    private String mobile;

    /**
     * 密码
     */
    private String password;

    /**
     * 身份
     */
    private RoleEnum role;

    /**
     * 状态
     */
    private StatusEnum status;

    private LocalDateTime createAt;
    private LocalDateTime updateAt;
    private String createBy;
    private String updateBy;

    private UserPO(String userId, String nickname, RoleEnum role) {
        this.id = userId;
        this.nickname = nickname;
        this.role = role;
    }

    private static UserPO noUser() {
        return new UserPO(null, null, null, null, null, null, null,
                null, null, null, null, null, null);
    }

    public static UserPO humanUser(String userId, String nickname, RoleEnum role) {
        requireNonBlank(userId, "UID must not be blank.");
        requireNonNull(role, "Role must not be null.");

        if(isNull(nickname)) {
            nickname = newNickname();
        }

        return new UserPO(userId, nickname, role);
    }

    public static String newNickname() {
        return "nickname"; // TODO
    }

}
