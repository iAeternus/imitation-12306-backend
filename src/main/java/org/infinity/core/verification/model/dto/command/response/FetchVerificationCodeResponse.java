package org.infinity.core.verification.model.dto.command.response;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;
import org.infinity.core.common.domain.marker.Response;
import org.infinity.core.verification.model.VerificationCodeTypeEnum;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/23
 * @className FetchVerificationCodeResponse
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class FetchVerificationCodeResponse implements Response {

    @Schema(name = "用户ID")
    String userId;

    @Schema(name = "邮箱或手机号")
    String mobileOrEmail;

    @Schema(name = "6位数验证码")
    String code;

    @Schema(name = "验证码用于的类型")
    VerificationCodeTypeEnum type;

    @Schema(name = "已经使用的次数，使用次数不能超过3次")
    int usedCount;

}
