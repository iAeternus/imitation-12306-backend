package org.infinity.core.train;

import org.infinity.BaseApiTest;
import org.infinity.core.train.model.dto.command.EnterCarriageCommand;
import org.infinity.core.train.model.dto.command.EnterTrainBatchCommand;
import org.infinity.core.train.model.dto.response.EnterCarriageResponse;
import org.infinity.core.train.model.dto.response.EnterTrainBatchResponse;
import org.infinity.core.train.model.po.CarriagePO;
import org.infinity.core.train.model.po.SeatPO;
import org.infinity.core.user.model.dto.response.JwtTokenResponse;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/11
 * @className TrainControllerApiTest
 * @desc
 */
public class TrainControllerApiTest extends BaseApiTest {

    // TODO 这个测试点会导致数据不一致问题
    // @Test
    // public void should_enter_train_batch() {
    //     // Given
    //     JwtTokenResponse operator = setupApi.registerWithLogin();
    //     EnterTrainBatchCommand command = createEnterTrainBatchCommand(3);
    //
    //     // When
    //     EnterTrainBatchResponse response = TrainApi.enterTrainBatch(operator.getToken(), command);
    //
    //     // Then
    //     assertEquals(3, response.getTrainIds().size());
    // }

    @Test
    public void should_enter_carriages() {
        // Given
        JwtTokenResponse operator = setupApi.registerWithLogin();
        EnterTrainBatchResponse r = TrainApi.enterTrainBatch(operator.getToken(), createEnterTrainBatchCommand(1));
        String trainId = r.getTrainIds().get(0);

        EnterCarriageCommand command = EnterCarriageCommand.builder()
                .trainId(trainId)
                .carriageCount(8)
                .firstClass(List.of(7))
                .capacities(List.of(55, 100, 85, 100, 55, 100, 51, 64))
                .build();

        // When
        EnterCarriageResponse response = TrainApi.enterCarriages(operator.getToken(), command);

        // Then
        List<CarriagePO> carriages = carriageRepository.listByIds(response.getCarriageIds());
        assertEquals(8, carriages.size());

        List<SeatPO> seats = seatRepository.listByCarriageIds(response.getCarriageIds());
        assertEquals(610, seats.size());
    }

    private static EnterTrainBatchCommand createEnterTrainBatchCommand(int count) {
        List<EnterTrainBatchCommand.TrainInfo> trainInfos = new ArrayList<>();
        for (int i = 0; i < count; ++i) {
            trainInfos.add(EnterTrainBatchCommand.TrainInfo.builder()
                    .name("和谐号")
                    .model("CRH2A")
                    .formation(8)
                    .length(201)
                    .capacity(610)
                    .topSpeed(250)
                    .build());
        }

        return EnterTrainBatchCommand.builder()
                .trainInfos(trainInfos)
                .build();
    }

}
