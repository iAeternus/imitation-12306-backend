package org.infinity.core.order.service;

import com.baomidou.mybatisplus.extension.service.IService;
import org.infinity.core.order.model.dto.response.SearchMineOrdersResponse;
import org.infinity.core.order.model.dto.response.SearchOrderDetailResponse;
import org.infinity.core.order.model.po.OrderPO;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/5
 * @className OrderQueryService
 * @desc
 */
public interface OrderQueryService extends IService<OrderPO> {

    SearchOrderDetailResponse searchOrderDetail(String orderId);

    SearchMineOrdersResponse searchMineOrders(String userId);
}
