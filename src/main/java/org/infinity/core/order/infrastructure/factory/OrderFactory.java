package org.infinity.core.order.infrastructure.factory;

import org.infinity.core.order.model.OrderStatusEnum;
import org.infinity.core.order.model.dto.command.CreateOrderCommand;
import org.infinity.core.order.model.po.OrderPO;
import org.springframework.stereotype.Component;

import java.math.BigDecimal;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className OrderFactory
 * @desc
 */
@Component
public class OrderFactory {

    public OrderPO createByBuyTicketCommand(CreateOrderCommand command, String seatId, BigDecimal price, int stationCount) {
        return OrderPO.builder()
                .id(OrderPO.newOrderId())
                .userId(command.getUserId())
                .tripId(command.getTripId())
                .seatId(seatId)
                .originTripStationId(command.getSourceTripStationId())
                .terminalTripStationId(command.getDstTripStationId())
                .stationCount(stationCount)
                .price(price)
                .status(OrderStatusEnum.TO_BE_PAID)
                .build();
    }

}
