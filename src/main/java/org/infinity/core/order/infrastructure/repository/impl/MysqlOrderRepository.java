package org.infinity.core.order.infrastructure.repository.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import org.infinity.core.order.infrastructure.mapper.OrderMapper;
import org.infinity.core.order.infrastructure.repository.OrderRepository;
import org.infinity.core.order.infrastructure.repository.cache.MysqlOrderCachedRepository;
import org.infinity.core.order.model.po.OrderPO;
import org.springframework.stereotype.Repository;

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
        return orderCachedRepository.cachedById(orderId);
    }
}
