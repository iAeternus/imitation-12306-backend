package org.infinity.core.train.model.dto.command;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.*;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;
import org.infinity.core.common.domain.marker.Command;
import org.infinity.core.common.validation.collection.NoNullElement;
import org.infinity.core.common.validation.id.train.TrainId;

import java.util.List;

import static org.infinity.core.common.constants.I12306Constants.MAX_CARRIAGE_COUNT;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/11
 * @className EnterCarriageCommand
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class EnterCarriageCommand implements Command {

    @TrainId
    @NotBlank
    @Schema(description = "列车ID")
    String trainId;

    @Min(2)
    @Max(MAX_CARRIAGE_COUNT)
    @NotNull
    @Schema(description = "车厢数量")
    Integer carriageCount;

    @NotNull
    @NoNullElement
    @Size(max = MAX_CARRIAGE_COUNT)
    @Schema(description = "一等车厢索引")
    List<Integer> firstClass; // TODO

    @NotNull
    @NoNullElement
    @Size(max = MAX_CARRIAGE_COUNT)
    @Schema(description = "每节车厢的定员数量。必须与carriageCount对应")
    List<Integer> capacities;

}
