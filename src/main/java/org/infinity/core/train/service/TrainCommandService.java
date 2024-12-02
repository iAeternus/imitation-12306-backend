package org.infinity.core.train.service;

import org.infinity.core.train.model.dto.command.EnterTrainBatchCommand;
import org.infinity.core.train.model.dto.response.EnterTrainBatchResponse;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/26
 * @className TrainCommandService
 * @desc
 */
public interface TrainCommandService {
    EnterTrainBatchResponse enterTrainBatch(EnterTrainBatchCommand command);
}
