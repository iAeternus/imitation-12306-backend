package org.infinity.core.order;

import org.infinity.BaseApiTest;
import org.infinity.core.common.utils.MyBatisPlusUtils;
import org.infinity.core.order.model.SeatLevelEnum;
import org.infinity.core.order.model.dto.command.CreateOrderCommand;
import org.infinity.core.order.model.dto.response.CreateOrderResponse;
import org.infinity.core.order.model.po.OrderPO;
import org.infinity.core.train.model.po.TripPO;
import org.infinity.core.train.model.po.TripStationPO;
import org.infinity.core.user.UserApi;
import org.infinity.core.user.model.dto.command.StuVerifyCommand;
import org.infinity.core.user.model.dto.response.JwtTokenResponse;
import org.junit.jupiter.api.Test;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.Comparator;
import java.util.List;

import static java.math.RoundingMode.HALF_UP;
import static org.junit.jupiter.api.Assertions.*;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/3
 * @className OrderControllerApiTest
 * @desc
 */
public class OrderControllerApiTest extends BaseApiTest {

    @Test
    public void should_create_order() {
        // Given
        JwtTokenResponse operator = setupApi.registerWithLogin();

        TripPO trip = MyBatisPlusUtils.randQueryOne(tripRepository);
        List<TripStationPO> tripStations = tripStationRepository.listByTripId(trip.getId());
        tripStations.sort(Comparator.naturalOrder());
        String sourceTripStationId = tripStations.get(0).getId();
        String dstTripStationId = tripStations.get(tripStations.size() - 1).getId();

        CreateOrderCommand command = CreateOrderCommand.builder()
                .userId(operator.getUserId())
                .tripId(trip.getId())
                .seatLevel(SeatLevelEnum.FIRST_CLASS.getKey())
                // 从起点坐到终点
                .sourceTripStationId(sourceTripStationId)
                .dstTripStationId(dstTripStationId)
                .build();

        // When
        CreateOrderResponse response = OrderApi.createOrder(operator.getToken(), command);

        // Then
        OrderPO order = orderRepository.cachedById(response.getOrderId());
        assertNotNull(order);
        assertEquals(sourceTripStationId, order.getOriginTripStationId());
        assertEquals(dstTripStationId, order.getTerminalTripStationId());
        assertNotNull(order.getSeatId());

        // When
        UserApi.stuVerify(operator.getToken(), StuVerifyCommand.builder().userId(operator.getUserId()).age(16).build());
        CreateOrderResponse response2 = OrderApi.createOrder(operator.getToken(), command);

        // Then
        OrderPO order2 = orderRepository.cachedById(response2.getOrderId());
        assertEquals(order.getPrice().multiply(BigDecimal.valueOf(0.8)).setScale(2, HALF_UP), order2.getPrice().setScale(2, HALF_UP));
    }

}
