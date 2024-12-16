package org.infinity.core.user.model.dto.command;

import jakarta.validation.Valid;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;
import org.infinity.core.common.model.marker.Command;
import org.infinity.core.common.validation.id.user.UserId;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/16
 * @className StuVerifyCommand
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class StuVerifyCommand implements Command {

    @UserId
    @NotBlank
    String userId;

    @Min(1)
    @Max(150)
    @NotNull
    Integer age;

}
