package org.infinity.core.order;

import org.infinity.BaseApiTest;
import org.infinity.core.common.utils.MyBatisPlusUtils;
import org.infinity.core.order.model.SeatLevelEnum;
import org.infinity.core.order.model.dto.command.BuyTicketCommand;
import org.infinity.core.order.model.dto.response.BuyTicketResponse;
import org.infinity.core.order.model.po.OrderPO;
import org.infinity.core.train.model.po.TripPO;
import org.infinity.core.train.model.po.TripSeatPO;
import org.infinity.core.train.model.po.TripStationPO;
import org.infinity.core.user.model.dto.response.JwtTokenResponse;
import org.junit.jupiter.api.Test;

import java.util.Comparator;
import java.util.List;

import static org.infinity.core.common.model.intervalset.LongIntervalSeatHandler.isValid;
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
    public void should_buy_ticket() {
        // Given
        JwtTokenResponse operator = setupApi.registerWithLogin();

        TripPO trip = MyBatisPlusUtils.randQueryOne(tripRepository);
        List<TripStationPO> tripStations = tripStationRepository.listByTripId(trip.getId());
        tripStations.sort(Comparator.naturalOrder());
        String sourceTripStationId = tripStations.get(0).getId();
        String dstTripStationId = tripStations.get(tripStations.size() - 1).getId();

        BuyTicketCommand command = BuyTicketCommand.builder()
                .userId(operator.getUserId())
                .tripId(trip.getId())
                .seatLevel(SeatLevelEnum.FIRST_CLASS.getKey())
                // 从起点坐到终点
                .sourceTripStationId(sourceTripStationId)
                .dstTripStationId(dstTripStationId)
                .build();

        // When
        BuyTicketResponse response = OrderApi.buyTicket(operator.getToken(), command);

        // Then
        OrderPO order = orderRepository.cachedById(response.getOrderId());
        assertNotNull(order);
        assertEquals(sourceTripStationId, order.getOriginTripStationId());
        assertEquals(dstTripStationId, order.getTerminalTripStationId());
        assertNotNull(order.getSeatId());
    }

    @Test
    public void should_promote_if_role_is_student() {

    }

    @Test
    public void should_promote_if_user_choose_first_class() {

    }

    @Test
    public void should_fail_to_buy_if_station_invalid() {

    }

    @Test
    public void should_fail_to_buy_if_no_such_seat() {

    }

    @Test
    public void should_fail_to_buy_if_trip_station_not_exists() {

    }

}
