package org.infinity.core.train.infrastructure.factory;

import org.infinity.core.train.model.dto.command.EnterTrainBatchCommand;
import org.infinity.core.train.model.po.TrainPO;
import org.springframework.stereotype.Component;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/26
 * @className TrainFactory
 * @desc
 */
@Component
public class TrainFactory {

    public TrainPO enterTrainBatch(EnterTrainBatchCommand.TrainInfo trainInfo) {
        return new TrainPO(
                trainInfo.getName(),
                trainInfo.getModel(),
                trainInfo.getFormation(),
                trainInfo.getLength(),
                trainInfo.getCapacity(),
                trainInfo.getTopSpeed()
        );
    }

}
