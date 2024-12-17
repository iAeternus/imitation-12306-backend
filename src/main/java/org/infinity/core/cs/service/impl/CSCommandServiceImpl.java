package org.infinity.core.cs.service.impl;

import lombok.RequiredArgsConstructor;
import org.infinity.common.ratelimit.RateLimiter;
import org.infinity.core.cs.infrastructure.factory.CSFactory;
import org.infinity.core.cs.infrastructure.repository.CSRepository;
import org.infinity.core.cs.model.dto.command.EnterCSBatchCommand;
import org.infinity.core.cs.model.dto.response.EnterCSBatchResponse;
import org.infinity.core.cs.model.po.CustomerServicePO;
import org.infinity.core.cs.service.CSCommandService;
import org.springframework.stereotype.Service;

import java.util.List;

import static com.google.common.collect.ImmutableList.toImmutableList;
import static org.infinity.core.common.constants.I12306Constants.DEFAULT_COMMAND_TPS;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/17
 * @className CSCommandServiceImpl
 * @desc
 */
@Service
@RequiredArgsConstructor
public class CSCommandServiceImpl implements CSCommandService {

    private final RateLimiter rateLimiter;
    private final CSRepository csRepository;
    private final CSFactory csFactory;

    @Override
    public EnterCSBatchResponse enterCSBatch(EnterCSBatchCommand command) {
        rateLimiter.applyFor("CS:enterCSBatch", DEFAULT_COMMAND_TPS);

        List<CustomerServicePO> css = command.getCsInfos().stream()
                .map(csFactory::enterCSBatch)
                .collect(toImmutableList());

        csRepository.saveBatch(css);

        return EnterCSBatchResponse.builder()
                .csIds(css.stream().map(CustomerServicePO::getId).collect(toImmutableList()))
                .build();
    }
}
