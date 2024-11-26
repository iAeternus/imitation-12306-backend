package org.infinity.core.order.service.impl;

import lombok.RequiredArgsConstructor;
import org.infinity.common.ratelimit.RateLimiter;
import org.infinity.core.common.constants.I12306Constants;
import org.infinity.core.common.exception.MyException;
import org.infinity.core.common.utils.ValidationUtils;
import org.infinity.core.order.infrastructure.factory.OrderFactory;
import org.infinity.core.order.infrastructure.handler.pricecalculate.PriceCalculateHandler;
import org.infinity.core.order.infrastructure.handler.pricecalculate.PriceContext;
import org.infinity.core.order.infrastructure.handler.pricecalculate.promotion.PromotionContext;
import org.infinity.core.order.infrastructure.handler.seatallocate.SeatAllocateHandler;
import org.infinity.core.order.infrastructure.repository.OrderRepository;
import org.infinity.core.order.model.dto.command.BuyTicketCommand;
import org.infinity.core.order.model.po.OrderPO;
import org.infinity.core.order.service.OrderCommandService;
import org.infinity.core.train.infrastructure.repository.CarriageRepository;
import org.infinity.core.train.infrastructure.repository.SeatRepository;
import org.infinity.core.train.infrastructure.repository.TripRepository;
import org.infinity.core.train.infrastructure.repository.TripStationRepository;
import org.infinity.core.train.model.po.CarriagePO;
import org.infinity.core.train.model.po.SeatPO;
import org.infinity.core.train.model.po.TripPO;
import org.infinity.core.train.model.po.TripStationPO;
import org.infinity.core.user.infrastructure.repository.UserRepository;
import org.infinity.core.user.model.po.UserPO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.util.List;
import java.util.stream.IntStream;

import static org.infinity.core.common.constants.I12306Constants.DEFAULT_COMMAND_TPE;
import static org.infinity.core.common.exception.ErrorCodeEnum.LEFT_GREATER_THAN_RIGHT;
import static org.infinity.core.common.exception.ErrorCodeEnum.TRIP_STATION_NOT_FOUND;
import static org.infinity.core.common.utils.MapUtils.mapOf;
import static org.infinity.core.order.infrastructure.handler.seatallocate.SeatAllocateHandler.SeatAllocateStrategyEnum.LINEAR;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/4
 * @className OrderCommandServiceImpl
 * @desc
 */
@Service
@RequiredArgsConstructor
public class OrderCommandServiceImpl implements OrderCommandService {

    private final TripStationRepository tripStationRepository;
    private final CarriageRepository carriageRepository;
    private final TripRepository tripRepository;
    private final SeatRepository seatRepository;
    private final OrderRepository orderRepository;
    private final UserRepository userRepository;
    private final RateLimiter rateLimiter;
    private final OrderFactory orderFactory;
    private final PriceCalculateHandler priceCalculateHandler;

    private final SeatAllocateHandler handler = SeatAllocateHandler.newInstance(LINEAR);

    @Override
    @Transactional
    public void buyTicket(BuyTicketCommand command) {
        rateLimiter.applyFor("Order:buyTicket", DEFAULT_COMMAND_TPE);

        // 座位分配
        TripPO trip = tripRepository.cachedById(command.getTripId());
        List<TripStationPO> tripStations = tripStationRepository.listByTripId(trip.getId());
        int sourceStationIndex = findTripStationIndex(tripStations, command.getSourceTripStationId());
        int distStationIndex = findTripStationIndex(tripStations, command.getDistTripStationId());
        if (sourceStationIndex > distStationIndex) {
            throw new MyException(LEFT_GREATER_THAN_RIGHT, "Interval is valid.",
                    mapOf("sourceStationId", sourceStationIndex, "distStationId", distStationIndex));
        }
        List<CarriagePO> cars = carriageRepository.listByTrainId(trip.getTrainId());
        List<SeatPO> seats = seatRepository.listByCarIds(cars.stream().map(CarriagePO::getId).toList());
        SeatPO seat = handler.allocateSeat(seats, sourceStationIndex, distStationIndex);
        seatRepository.updateById(seat);

        // 计算价格，订单落库
        UserPO user = userRepository.cachedById(command.getUserId());
        BigDecimal price = priceCalculateHandler.calculatePrice(PriceContext.builder().tripStations(tripStations).build(),
                PromotionContext.builder().role(user.getRole()).build());
        OrderPO order = orderFactory.createByBuyTicketCommand(command, price);
        orderRepository.save(order);
    }

    private int findTripStationIndex(List<TripStationPO> tripStations, String tripStationId) {
        return IntStream.range(0, tripStations.size())
                .filter(i -> ValidationUtils.equals(tripStations.get(i), tripStationId))
                .findFirst()
                .orElseThrow(() -> new MyException(TRIP_STATION_NOT_FOUND, "Trip Station not found.", mapOf("sourceStationId", tripStationId)));
    }

}
