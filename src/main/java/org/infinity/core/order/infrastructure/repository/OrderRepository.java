package org.infinity.core.order.infrastructure.repository;

import com.baomidou.mybatisplus.extension.service.IService;
import org.infinity.core.order.model.OrderStatusEnum;
import org.infinity.core.order.model.dto.response.SearchOrderDetailResponse;
import org.infinity.core.order.model.po.OrderPO;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className OrderRepository
 * @desc
 */
public interface OrderRepository extends IService<OrderPO> {

    OrderPO cachedById(String orderId);

    SearchOrderDetailResponse searchOrderDetail(String orderId);

    void updateStatus(String orderId, OrderStatusEnum newStatus);

}
