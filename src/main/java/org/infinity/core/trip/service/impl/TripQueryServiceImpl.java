package org.infinity.core.trip.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import lombok.RequiredArgsConstructor;
import org.infinity.common.ratelimit.RateLimiter;
import org.infinity.core.common.model.page.PageResponse;
import org.infinity.core.trip.infrastructure.factory.TripFactory;
import org.infinity.core.trip.infrastructure.repository.TripRepository;
import org.infinity.core.trip.model.TripStatusEnum;
import org.infinity.core.trip.model.dto.query.TripPageQuery;
import org.infinity.core.trip.model.dto.response.TripResponse;
import org.infinity.core.trip.model.po.TripPO;
import org.infinity.core.trip.service.TripQueryService;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;

import static org.infinity.core.common.constants.I12306Constants.DEFAULT_QUERY_TPS;
import static org.infinity.core.common.model.page.PageFactory.toPageDefaultSortByUpdateTime;
import static org.infinity.core.common.model.page.PageFactory.toPageResponse;
import static org.infinity.core.common.utils.ValidationUtils.isNotBlank;
import static org.infinity.core.common.utils.ValidationUtils.nonNull;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/26
 * @className TripQueryServiceImpl
 * @desc
 */
@Service
@RequiredArgsConstructor
public class TripQueryServiceImpl implements TripQueryService {

    private final TripRepository tripRepository;
    private final TripFactory tripFactory;
    private final RateLimiter rateLimiter;

    @Override
    public PageResponse<TripResponse> pages(TripPageQuery pageQuery) {
        rateLimiter.applyFor("Trip:pages", DEFAULT_QUERY_TPS);

        String trainId = pageQuery.getTrainId();
        String originStationId = pageQuery.getOriginStationId();
        String terminalStationId = pageQuery.getTerminalStationId();
        LocalDateTime startAt = pageQuery.getStartAt();
        LocalDateTime endAt = pageQuery.getEndAt();
        TripStatusEnum status = pageQuery.getStatus();

        Page<TripPO> page = tripRepository.lambdaQuery()
                .eq(isNotBlank(trainId), TripPO::getTrainId, trainId)
                .eq(isNotBlank(originStationId), TripPO::getOriginStationId, originStationId)
                .eq(isNotBlank(terminalStationId), TripPO::getTerminalStationId, terminalStationId)
                .ge(nonNull(startAt), TripPO::getStartAt, startAt)
                .le(nonNull(endAt), TripPO::getEndAt, endAt)
                .eq(nonNull(status), TripPO::getStatus, status)
                .page(toPageDefaultSortByUpdateTime(pageQuery));

        return toPageResponse(page, tripFactory::toTripResponse);
    }

    @Override
    public TripResponse byId(String tripId) {
        rateLimiter.applyFor("Trip:byId", DEFAULT_QUERY_TPS);

        TripPO trip = tripRepository.cachedById(tripId);
        return tripFactory.toTripResponse(trip);
    }
}
