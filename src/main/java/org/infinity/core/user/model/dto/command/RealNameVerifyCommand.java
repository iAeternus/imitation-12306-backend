package org.infinity.core.user.model.dto.command;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;
import org.infinity.core.common.domain.marker.Command;
import org.infinity.core.common.validation.id.user.UserId;
import org.infinity.core.common.validation.idcard.IdCard;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/16
 * @className RealNameVerifyCommand
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class RealNameVerifyCommand implements Command {

    @UserId
    @NotBlank
    String userId;

    @NotBlank
    String realName;

    @Min(0)
    @Max(1)
    @NotNull
    Short idType;

    @IdCard
    @NotBlank
    String idCard;

}
