package org.infinity.core.trip.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import lombok.RequiredArgsConstructor;
import org.infinity.common.ratelimit.RateLimiter;
import org.infinity.core.common.domain.page.PageResponse;
import org.infinity.core.common.domain.pricecalculate.PriceCalculateHandler;
import org.infinity.core.common.domain.pricecalculate.PriceContext;
import org.infinity.core.common.domain.pricecalculate.promotion.PromotionContext;
import org.infinity.core.train.model.CarriageLevelEnum;
import org.infinity.core.trip.infrastructure.factory.TripFactory;
import org.infinity.core.trip.infrastructure.repository.TripRepository;
import org.infinity.core.trip.infrastructure.repository.TripStationRepository;
import org.infinity.core.trip.model.TripStatusEnum;
import org.infinity.core.trip.model.dto.query.TripPageQuery;
import org.infinity.core.trip.model.dto.response.SearchPriceResponse;
import org.infinity.core.trip.model.dto.response.TripResponse;
import org.infinity.core.trip.model.po.TripPO;
import org.infinity.core.trip.model.po.TripStationPO;
import org.infinity.core.trip.service.TripQueryService;
import org.infinity.core.user.model.RoleEnum;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

import static org.infinity.core.common.constants.I12306Constants.DEFAULT_QUERY_TPS;
import static org.infinity.core.common.domain.page.PageFactory.toPageDefaultSortByUpdateTime;
import static org.infinity.core.common.domain.page.PageFactory.toPageResponse;
import static org.infinity.core.common.utils.MapUtils.mapOf;
import static org.infinity.core.common.utils.ValidationUtils.isNotBlank;
import static org.infinity.core.common.utils.ValidationUtils.nonNull;
import static org.infinity.core.train.model.CarriageLevelEnum.FIRST_CLASS;
import static org.infinity.core.train.model.CarriageLevelEnum.SECOND_CLASS;
import static org.infinity.core.user.model.RoleEnum.ADULT;

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
    private final TripStationRepository tripStationRepository;
    private final TripFactory tripFactory;
    private final RateLimiter rateLimiter;
    private final PriceCalculateHandler priceCalculateHandler;

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

    @Override
    public SearchPriceResponse searchPrices(String tripId) {
        rateLimiter.applyFor("Trip:searchPrice", DEFAULT_QUERY_TPS);

        List<TripStationPO> tripStations = tripStationRepository.listByTripId(tripId);

        // first class
        BigDecimal firstClassPrice = priceCalculateHandler.calculatePrice(
                PriceContext.builder().tripStations(tripStations).level(FIRST_CLASS).build(),
                PromotionContext.builder().role(ADULT).build()
        );

        // second class
        BigDecimal secondClassPrice = priceCalculateHandler.calculatePrice(
                PriceContext.builder().tripStations(tripStations).level(SECOND_CLASS).build(),
                PromotionContext.builder().role(ADULT).build()
        );

        return SearchPriceResponse.builder()
                .prices(mapOf((short) 0, firstClassPrice, (short) 1, secondClassPrice))
                .build();
    }
}
