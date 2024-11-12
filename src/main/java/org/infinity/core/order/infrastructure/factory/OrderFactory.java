package org.infinity.core.order.infrastructure.factory;

import org.infinity.core.order.model.OrderStatusEnum;
import org.infinity.core.order.model.SeatLevelEnum;
import org.infinity.core.order.model.dto.command.BuyTicketCommand;
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

    public OrderPO createByBuyTicketCommand(BuyTicketCommand command, BigDecimal price) {
        return OrderPO.builder()
                .id(OrderPO.newOrderId())
                .userId(command.getUserId())
                .tripId(command.getTripId())
                .originTripStationId(command.getSourceTripStationId())
                .terminalTripStationId(command.getDistTripStationId())
                .seatLevel(SeatLevelEnum.of(command.getSeatLevel()))
                .price(price)
                .status(OrderStatusEnum.TO_BE_PAID)
                .build();
    }

}
