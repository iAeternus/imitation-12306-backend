package org.infinity.core.cs.infrastructure.factory;

import org.infinity.core.cs.model.dto.command.EnterCSBatchCommand;
import org.infinity.core.cs.model.po.CustomerServicePO;
import org.springframework.stereotype.Component;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/17
 * @className CSFactory
 * @desc
 */
@Component
public class CSFactory {

    public CustomerServicePO enterCSBatch(EnterCSBatchCommand.CSInfo csInfo) {
        return new CustomerServicePO(csInfo.getStationId(), csInfo.getPhoneNumber(), csInfo.getServerTime());
    }

}
