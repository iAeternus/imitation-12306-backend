package org.infinity.core.order.infrastructure.repository.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import jakarta.validation.metadata.ValidateUnwrappedValue;
import lombok.RequiredArgsConstructor;
import org.infinity.core.common.utils.ValidationUtils;
import org.infinity.core.order.infrastructure.mapper.OrderMapper;
import org.infinity.core.order.infrastructure.repository.OrderRepository;
import org.infinity.core.order.infrastructure.repository.cache.MysqlOrderCachedRepository;
import org.infinity.core.order.model.dto.response.SearchOrderDetailResponse;
import org.infinity.core.order.model.po.OrderPO;
import org.springframework.stereotype.Repository;

import static org.infinity.core.common.utils.ValidationUtils.requireNonBlank;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className MysqlOrderRepository
 * @desc
 */
@Repository
@RequiredArgsConstructor
public class MysqlOrderRepository extends ServiceImpl<OrderMapper, OrderPO> implements OrderRepository {

    private final MysqlOrderCachedRepository orderCachedRepository;

    @Override
    public OrderPO cachedById(String orderId) {
        requireNonBlank(orderId, "Order ID must not be blank");

        return orderCachedRepository.cachedById(orderId);
    }

    @Override
    public SearchOrderDetailResponse searchOrderDetail(String orderId) {
        requireNonBlank(orderId, "Order ID must not be blank");

        return orderCachedRepository.searchOrderDetail(orderId);
    }
}
