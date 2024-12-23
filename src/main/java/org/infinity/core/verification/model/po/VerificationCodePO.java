package org.infinity.core.verification.model.po;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.infinity.core.common.exception.MyException;
import org.infinity.core.verification.model.VerificationCodeTypeEnum;

import java.time.LocalDateTime;

import static org.apache.commons.lang3.RandomStringUtils.randomNumeric;
import static org.infinity.core.common.exception.ErrorCodeEnum.VERIFICATION_CODE_COUNT_OVERFLOW;
import static org.infinity.core.common.utils.SnowflakeIdGenerator.newSnowflakeId;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/23
 * @className VerificationCodePO
 * @desc
 */
@Data
@TableName("verification_code")
@NoArgsConstructor
public class VerificationCodePO {

    /**
     * ID
     */
    private String id;

    /**
     * 用户ID
     */
    private String userId;

    /**
     * 邮箱或手机号
     */
    private String mobileOrEmail;

    /**
     * 6位数验证码
     */
    private String code;

    /**
     * 验证码用于的类型
     */
    private VerificationCodeTypeEnum type;

    /**
     * 已经使用的次数，使用次数不能超过3次
     */
    private int usedCount;

    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createAt;
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateAt;

    public VerificationCodePO(String mobileOrEmail, VerificationCodeTypeEnum type, String userId) {
        this.id = newVerificationCodeId();
        this.userId = userId;
        this.mobileOrEmail = mobileOrEmail;
        this.code = randomNumeric(6);
        this.type = type;
        this.usedCount = 0;
    }

    public static String newVerificationCodeId() {
        return "VRC" + newSnowflakeId();
    }

    /**
     * 使用验证码，使用次数+1
     */
    public void use() {
        if (usedCount >= 3) {
            throw new MyException(VERIFICATION_CODE_COUNT_OVERFLOW, "验证码已超过可使用次数。");
        }

        this.usedCount++;
    }

}
