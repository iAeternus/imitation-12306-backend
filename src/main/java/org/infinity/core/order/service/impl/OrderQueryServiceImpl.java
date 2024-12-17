package org.infinity.core.order.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import org.infinity.common.ratelimit.RateLimiter;
import org.infinity.core.common.constants.I12306Constants;
import org.infinity.core.order.infrastructure.mapper.OrderMapper;
import org.infinity.core.order.infrastructure.repository.OrderRepository;
import org.infinity.core.order.model.dto.response.SearchOrderDetailResponse;
import org.infinity.core.order.model.po.OrderPO;
import org.infinity.core.order.service.OrderQueryService;
import org.infinity.core.station.infrastructure.repository.StationRepository;
import org.infinity.core.train.infrastructure.repository.SeatRepository;
import org.infinity.core.train.model.po.SeatPO;
import org.infinity.core.trip.infrastructure.repository.TripStationRepository;
import org.infinity.core.trip.model.po.TripStationPO;
import org.infinity.core.user.infrastructure.repository.UserRepository;
import org.infinity.core.user.model.po.UserPO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.stream.IntStream;

import static com.google.common.collect.ImmutableList.toImmutableList;
import static org.infinity.core.common.constants.I12306Constants.DEFAULT_QUERY_TPS;
import static org.infinity.core.trip.model.po.TripStationPO.findTripStationIndex;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/5
 * @className OrderQueryServiceImpl
 * @desc
 */
@Service
@RequiredArgsConstructor
public class OrderQueryServiceImpl extends ServiceImpl<OrderMapper, OrderPO> implements OrderQueryService {

    private final OrderRepository orderRepository;
    private final RateLimiter rateLimiter;

    @Override
    @Transactional
    public SearchOrderDetailResponse searchOrderDetail(String orderId) {
        rateLimiter.applyFor("Order:searchOrderDetail", DEFAULT_QUERY_TPS);

        return orderRepository.searchOrderDetail(orderId);
    }
}
