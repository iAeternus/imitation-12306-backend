package org.infinity.core.train.service.impl;

import lombok.RequiredArgsConstructor;
import org.infinity.common.ratelimit.RateLimiter;
import org.infinity.core.common.constants.I12306Constants;
import org.infinity.core.train.infrastructure.factory.TripFactory;
import org.infinity.core.train.infrastructure.repository.TripRepository;
import org.infinity.core.train.model.dto.command.EnterTripBatchCommand;
import org.infinity.core.train.model.dto.response.EnterTripBatchResponse;
import org.infinity.core.train.model.po.TripPO;
import org.infinity.core.train.service.TripCommandService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

import static org.infinity.core.common.constants.I12306Constants.DEFAULT_COMMAND_TPE;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/26
 * @className TripCommandServiceImpl
 * @desc
 */
@Service
@RequiredArgsConstructor
public class TripCommandServiceImpl implements TripCommandService {

    private final TripRepository tripRepository;
    private final TripFactory tripFactory;
    private final RateLimiter rateLimiter;

    @Override
    @Transactional
    public EnterTripBatchResponse enterTripBatch(EnterTripBatchCommand command) {
        rateLimiter.applyFor("Trip:enterTripBatch", DEFAULT_COMMAND_TPE);

        List<TripPO> trips = command.getTripInfos().stream()
                .map(tripFactory::enterTripBatch)
                .toList();

        tripRepository.saveBatch(trips, trips.size());

        List<String> tripIds = trips.stream()
                .map(TripPO::getId)
                .toList();
        return EnterTripBatchResponse.builder()
                .tripIds(tripIds)
                .build();
    }
}
