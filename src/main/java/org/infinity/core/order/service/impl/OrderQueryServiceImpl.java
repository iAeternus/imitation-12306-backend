package org.infinity.core.order.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import org.infinity.common.ratelimit.RateLimiter;
import org.infinity.core.order.infrastructure.mapper.OrderMapper;
import org.infinity.core.order.infrastructure.repository.OrderRepository;
import org.infinity.core.order.model.dto.OrderDetail;
import org.infinity.core.order.model.dto.response.SearchMineOrdersResponse;
import org.infinity.core.order.model.dto.response.SearchOrderDetailResponse;
import org.infinity.core.order.model.po.OrderPO;
import org.infinity.core.order.service.OrderQueryService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

import static com.google.common.collect.ImmutableList.toImmutableList;
import static org.infinity.core.common.constants.I12306Constants.DEFAULT_QUERY_TPS;

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

        OrderDetail orderDetail = orderRepository.searchOrderDetail(orderId);
        return SearchOrderDetailResponse.builder()
                .orderDetail(orderDetail)
                .build();
    }

    @Override
    public SearchMineOrdersResponse searchMineOrders(String userId) {
        rateLimiter.applyFor("Order:searchMineOrders", DEFAULT_QUERY_TPS);

        List<OrderPO> orders = orderRepository.listByUserId(userId);
        return SearchMineOrdersResponse.builder()
                .orderIds(orders.stream().map(OrderPO::getId).collect(toImmutableList()))
                .build();
    }
}
