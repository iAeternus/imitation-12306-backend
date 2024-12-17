package org.infinity.core.user.model.po;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import org.infinity.core.common.utils.SnowflakeIdGenerator;
import org.infinity.core.common.utils.UUIDGenerator;
import org.infinity.core.user.model.IdTypeEnum;
import org.infinity.core.user.model.RoleEnum;
import org.infinity.core.user.model.StatusEnum;

import java.time.LocalDateTime;

import static com.baomidou.mybatisplus.core.toolkit.ObjectUtils.isNotNull;
import static org.infinity.core.common.constants.I12306Constants.USER_ID_PREFIX;
import static org.infinity.core.common.utils.ValidationUtils.*;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/5
 * @className UserPO
 * @desc
 */
@Data
@TableName("user")
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
     * 头像url
     */
    private String avatar;

    /**
     * 实名
     */
    private String realName;

    /**
     * 证件类型
     */
    private IdTypeEnum idType;

    /**
     * 证件号
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

    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createAt;
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateAt;

    private UserPO(String userId, String nickname, RoleEnum role) {
        this.id = userId;
        this.nickname = nickname;
        this.role = role;
    }

    private UserPO(String id, String nickname, String mobile, String password) {
        this.id = id;
        this.nickname = nickname;
        this.mobile = mobile;
        this.password = password;
    }

    public static String newUserId() {
        return USER_ID_PREFIX + SnowflakeIdGenerator.newSnowflakeId();
    }

    private static UserPO noUser() {
        return new UserPO(null, null, null, null, null, null, null,
                null, null, null, null, null);
    }

    public static UserPO humanUser(String userId, String nickname, RoleEnum role) {
        requireNonBlank(userId, "UID must not be blank.");
        requireNonNull(role, "Role must not be null.");

        if (isNull(nickname)) {
            nickname = newNickname();
        }

        return new UserPO(userId, nickname, role);
    }

    public static UserPO humanUser(String nickname, String mobile, String password) {
        requireNonBlank(mobile, "Mobile must not be blank.");
        requireNonBlank(password, "Password must not be blank.");

        if (isNull(nickname)) {
            nickname = newNickname();
        }

        return new UserPO(newUserId(), nickname, mobile, password);
    }

    /**
     * 默认昵称
     */
    public static String newNickname() {
        return "NIK" + UUIDGenerator.newShortUuid();
    }

    public boolean isRealNameVerify() {
        return isNotBlank(realName) && isNotNull(idType) && isNotBlank(idCard);
    }

}
