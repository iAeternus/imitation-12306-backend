package org.infinity.core.order.service;

import org.infinity.core.order.model.dto.command.CreateOrderCommand;
import org.infinity.core.order.model.dto.response.CreateOrderResponse;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/4
 * @className OrderCommandService
 * @desc
 */
public interface OrderCommandService {

    CreateOrderResponse createOrder(CreateOrderCommand command);

}
