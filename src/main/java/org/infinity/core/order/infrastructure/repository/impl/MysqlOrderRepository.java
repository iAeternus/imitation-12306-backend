package org.infinity.core.order.infrastructure.repository.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import org.infinity.core.common.exception.MyException;
import org.infinity.core.order.infrastructure.mapper.OrderMapper;
import org.infinity.core.order.infrastructure.repository.OrderRepository;
import org.infinity.core.order.infrastructure.repository.cache.MysqlOrderCachedRepository;
import org.infinity.core.order.model.OrderStatusEnum;
import org.infinity.core.order.model.dto.OrderDetail;
import org.infinity.core.order.model.po.OrderPO;
import org.springframework.stereotype.Repository;

import java.util.List;

import static org.infinity.core.common.exception.ErrorCodeEnum.ORDER_NOT_FOUND;
import static org.infinity.core.common.utils.MapUtils.mapOf;
import static org.infinity.core.common.utils.ValidationUtils.*;

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

        OrderPO order = orderCachedRepository.cachedById(orderId);
        if (isNull(order)) {
            throw new MyException(ORDER_NOT_FOUND, "Order not found.", mapOf("orderId", orderId));
        }
        return order;
    }

    @Override
    public OrderDetail searchOrderDetail(String orderId) {
        requireNonBlank(orderId, "Order ID must not be blank");

        return orderCachedRepository.searchOrderDetail(orderId);
    }

    @Override
    public boolean updateStatus(String orderId, OrderStatusEnum newStatus) {
        requireNonBlank(orderId, "Order ID must not be blank");
        requireNonNull(newStatus, "Order status must not be null.");

        OrderPO order = getById(orderId);
        if (isNull(order)) {
            throw new MyException(ORDER_NOT_FOUND, "Order not found.", mapOf("orderId", orderId));
        }
        if (order.getStatus() == newStatus) {
            return false;
        }
        order.setStatus(newStatus);
        orderCachedRepository.evictOrderCache(orderId);
        orderCachedRepository.evictOrderDetailCache(orderId);
        return updateById(order);
    }

    @Override
    public List<OrderPO> listByUserId(String userId) {
        requireNonBlank(userId, "User ID must not be blank");

        List<OrderPO> orders = lambdaQuery().eq(OrderPO::getUserId, userId).list();
        if (isEmpty(orders)) {
            throw new MyException(ORDER_NOT_FOUND, "You have no order yet.", mapOf("userId", userId));
        }
        return orders;
    }
}
