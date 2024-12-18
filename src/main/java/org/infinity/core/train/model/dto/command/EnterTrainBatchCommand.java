package org.infinity.core.train.model.dto.command;

import jakarta.validation.Valid;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;
import org.infinity.core.common.domain.marker.Command;
import org.infinity.core.common.validation.collection.NoNullElement;
import org.infinity.core.common.validation.number.IntegerLimit;

import java.util.List;

import static org.infinity.core.common.constants.I12306Constants.MAX_ENTER_LENGTH;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/26
 * @className EnterTrainBatchCommand
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class EnterTrainBatchCommand implements Command {

    @Valid
    @NotNull
    @NoNullElement
    @Size(max = MAX_ENTER_LENGTH)
    List<@Valid TrainInfo> trainInfos;

    @Value
    @Builder
    @AllArgsConstructor(access = AccessLevel.PRIVATE)
    public static class TrainInfo {
        @NotBlank
        String name;

        @NotBlank
        String model;

        @NotNull
        @IntegerLimit(min = 8, max = 16)
        Integer formation;

        @NotNull
        @IntegerLimit(min = 200, max = 450)
        Integer length;

        @NotNull
        @IntegerLimit(min = 500, max = 1500)
        Integer capacity;

        @NotNull
        @IntegerLimit(min = 200, max = 400)
        Integer topSpeed;
    }

}
