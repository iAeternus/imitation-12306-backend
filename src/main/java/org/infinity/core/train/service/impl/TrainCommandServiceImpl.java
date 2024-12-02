package org.infinity.core.train.service.impl;

import com.google.common.collect.ImmutableList;
import lombok.RequiredArgsConstructor;
import org.infinity.common.ratelimit.RateLimiter;
import org.infinity.core.train.infrastructure.factory.TrainFactory;
import org.infinity.core.train.infrastructure.repository.TrainRepository;
import org.infinity.core.train.model.dto.command.EnterTrainBatchCommand;
import org.infinity.core.train.model.dto.response.EnterTrainBatchResponse;
import org.infinity.core.train.model.po.TrainPO;
import org.infinity.core.train.service.TrainCommandService;
import org.springframework.stereotype.Service;

import java.util.List;

import static com.google.common.collect.ImmutableList.toImmutableList;
import static org.infinity.core.common.constants.I12306Constants.DEFAULT_COMMAND_TPS;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/26
 * @className TrainCommandServiceImpl
 * @desc
 */
@Service
@RequiredArgsConstructor
public class TrainCommandServiceImpl implements TrainCommandService {

    private final TrainRepository trainRepository;
    private final TrainFactory trainFactory;
    private final RateLimiter rateLimiter;

    @Override
    public EnterTrainBatchResponse enterTrainBatch(EnterTrainBatchCommand command) {
        rateLimiter.applyFor("Train:enterTrainBatch", DEFAULT_COMMAND_TPS);

        ImmutableList<TrainPO> trains = command.getTrainInfos().stream()
                .map(trainFactory::enterTrainBatch)
                .collect(toImmutableList());

        trainRepository.saveBatch(trains);

        return EnterTrainBatchResponse.builder()
                .trainIds(trains.stream().map(TrainPO::getId).collect(toImmutableList()))
                .build();
    }
}
