package org.infinity.core.cs.service;

import org.infinity.core.cs.model.dto.command.EnterCSBatchCommand;
import org.infinity.core.cs.model.dto.response.EnterCSBatchResponse;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/16
 * @className CSCommandService
 * @desc
 */
public interface CSCommandService {
    EnterCSBatchResponse enterCSBatch(EnterCSBatchCommand command);
}
