package org.infinity.core.order;

import org.infinity.BaseApiTest;
import org.infinity.core.common.utils.MyBatisPlusUtils;
import org.infinity.core.order.model.dto.command.CheckInCommand;
import org.infinity.core.order.model.dto.command.CreateOrderCommand;
import org.infinity.core.order.model.dto.command.OutboundCommand;
import org.infinity.core.order.model.dto.response.CheckInResponse;
import org.infinity.core.order.model.dto.response.CreateOrderResponse;
import org.infinity.core.order.model.dto.response.OutboundResponse;
import org.infinity.core.order.model.dto.response.SearchOrderDetailResponse;
import org.infinity.core.order.model.po.OrderPO;
import org.infinity.core.train.model.CarriageLevelEnum;
import org.infinity.core.trip.model.po.TripPO;
import org.infinity.core.trip.model.po.TripStationPO;
import org.infinity.core.user.UserApi;
import org.infinity.core.user.model.dto.command.StuVerifyCommand;
import org.infinity.core.user.model.dto.response.JwtTokenResponse;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import java.math.BigDecimal;
import java.util.Comparator;
import java.util.List;

import static java.math.RoundingMode.HALF_UP;
import static org.infinity.core.common.exception.ErrorCodeEnum.NOT_REAL_NAME_VERIFY_YET;
import static org.infinity.core.common.utils.MyBatisPlusUtils.randQueryOne;
import static org.infinity.core.order.model.OrderStatusEnum.ON_BOARD;
import static org.infinity.core.order.model.OrderStatusEnum.OUT_OF_STATION;
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
    @DisplayName("分别创建成人和学生的订单，会买两张票")
    public void should_create_order() {
        // Given
        JwtTokenResponse operator = setupApi.registerWithLoginAndRealNameVerify();

        TripPO trip = randQueryOne(tripRepository);
        List<TripStationPO> tripStations = tripStationRepository.listByTripId(trip.getId());
        tripStations.sort(Comparator.naturalOrder());
        String sourceTripStationId = tripStations.get(0).getId();
        String dstTripStationId = tripStations.get(tripStations.size() - 1).getId();

        CreateOrderCommand command = CreateOrderCommand.builder()
                .userId(operator.getUserId())
                .tripId(trip.getId())
                .seatLevel(CarriageLevelEnum.FIRST_CLASS.getKey())
                // 从起点坐到终点
                .sourceTripStationId(sourceTripStationId)
                .dstTripStationId(dstTripStationId)
                .build();

        // When
        CreateOrderResponse response = OrderApi.createOrder(operator.getToken(), command);

        // Then
        OrderPO order = orderRepository.cachedById(response.getOrderId());
        assertNotNull(order);
        assertEquals(sourceTripStationId, order.getSourceTripStationId());
        assertEquals(dstTripStationId, order.getDstTripStationId());
        assertNotNull(order.getSeatId());

        // When
        UserApi.stuVerify(operator.getToken(), StuVerifyCommand.builder().userId(operator.getUserId()).age(16).build());
        CreateOrderResponse response2 = OrderApi.createOrder(operator.getToken(), command);

        // Then
        OrderPO order2 = orderRepository.cachedById(response2.getOrderId());
        assertEquals(order.getPrice().multiply(BigDecimal.valueOf(0.8)).setScale(2, HALF_UP), order2.getPrice().setScale(2, HALF_UP));
    }

    @Test
    public void should_fail_to_create_if_not_real_name_verify_yet() {
        // Given
        JwtTokenResponse operator = setupApi.registerWithLogin();

        TripPO trip = randQueryOne(tripRepository);
        List<TripStationPO> tripStations = tripStationRepository.listByTripId(trip.getId());
        tripStations.sort(Comparator.naturalOrder());
        String sourceTripStationId = tripStations.get(0).getId();
        String dstTripStationId = tripStations.get(tripStations.size() - 1).getId();

        CreateOrderCommand command = CreateOrderCommand.builder()
                .userId(operator.getUserId())
                .tripId(trip.getId())
                .seatLevel(CarriageLevelEnum.FIRST_CLASS.getKey())
                // 从起点坐到终点
                .sourceTripStationId(sourceTripStationId)
                .dstTripStationId(dstTripStationId)
                .build();

        // When & Then
        assertError(() -> OrderApi.createOrderRaw(operator.getToken(), command), NOT_REAL_NAME_VERIFY_YET);
    }

    @Test
    public void should_search_order_detail() {
        // Given
        JwtTokenResponse operator = setupApi.registerWithLoginAndRealNameVerify();
        TripPO trip = randQueryOne(tripRepository);
        List<TripStationPO> tripStations = tripStationRepository.listByTripId(trip.getId());
        tripStations.sort(Comparator.naturalOrder());
        String sourceTripStationId = tripStations.get(0).getId();
        String dstTripStationId = tripStations.get(tripStations.size() - 1).getId();

        CreateOrderCommand command = CreateOrderCommand.builder()
                .userId(operator.getUserId())
                .tripId(trip.getId())
                .seatLevel(CarriageLevelEnum.FIRST_CLASS.getKey())
                // 从起点坐到终点
                .sourceTripStationId(sourceTripStationId)
                .dstTripStationId(dstTripStationId)
                .build();
        String orderId = OrderApi.createOrder(operator.getToken(), command).getOrderId();

        // When
        SearchOrderDetailResponse response = OrderApi.searchOrderDetail(operator.getToken(), orderId);

        // Then
        assertNotNull(response);
        assertEquals(tripStations.size(), response.getStations().size());
    }

    @Test
    public void should_checkin() {
        // Given
        JwtTokenResponse operator = setupApi.registerWithLogin();
        OrderPO order = randQueryOne(orderRepository);

        CheckInCommand command = CheckInCommand.builder()
                .orderId(order.getId())
                .build();

        // When
        CheckInResponse response = OrderApi.checkin(operator.getToken(), command);

        // Then
        assertTrue(response.getIsSuccess());

        OrderPO newOrder = orderRepository.cachedById(command.getOrderId());
        assertNotEquals(order.getStatus(), newOrder.getStatus());
        assertEquals(ON_BOARD, newOrder.getStatus());
    }

    @Test
    public void should_outbound() {
        // Given
        JwtTokenResponse operator = setupApi.registerWithLogin();
        OrderPO order = randQueryOne(orderRepository);

        OutboundCommand command = OutboundCommand.builder()
                .orderId(order.getId())
                .build();

        // When
        OutboundResponse response = OrderApi.outbound(operator.getToken(), command);

        // Then
        assertTrue(response.getIsSuccess());

        OrderPO newOrder = orderRepository.cachedById(command.getOrderId());
        assertNotEquals(order.getStatus(), newOrder.getStatus());
        assertEquals(OUT_OF_STATION, newOrder.getStatus());
    }

}
