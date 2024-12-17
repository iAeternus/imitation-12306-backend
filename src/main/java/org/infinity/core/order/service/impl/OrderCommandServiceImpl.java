package org.infinity.core.order.service.impl;

import lombok.RequiredArgsConstructor;
import org.infinity.common.ratelimit.RateLimiter;
import org.infinity.core.common.exception.MyException;
import org.infinity.core.order.infrastructure.factory.OrderFactory;
import org.infinity.core.order.infrastructure.handler.pricecalculate.PriceCalculateHandler;
import org.infinity.core.order.infrastructure.handler.pricecalculate.PriceContext;
import org.infinity.core.order.infrastructure.handler.pricecalculate.promotion.PromotionContext;
import org.infinity.core.order.infrastructure.handler.seatallocate.SeatAllocateHandler;
import org.infinity.core.order.infrastructure.repository.OrderRepository;
import org.infinity.core.order.model.OrderStatusEnum;
import org.infinity.core.order.model.dto.command.CheckInCommand;
import org.infinity.core.order.model.dto.command.CreateOrderCommand;
import org.infinity.core.order.model.dto.command.OutboundCommand;
import org.infinity.core.order.model.dto.response.CheckInResponse;
import org.infinity.core.order.model.dto.response.CreateOrderResponse;
import org.infinity.core.order.model.dto.response.OutboundResponse;
import org.infinity.core.order.model.po.OrderPO;
import org.infinity.core.order.service.OrderCommandService;
import org.infinity.core.train.infrastructure.repository.CarriageRepository;
import org.infinity.core.train.infrastructure.repository.SeatRepository;
import org.infinity.core.train.model.CarriageLevelEnum;
import org.infinity.core.train.model.po.CarriagePO;
import org.infinity.core.train.model.po.SeatPO;
import org.infinity.core.trip.infrastructure.repository.TripRepository;
import org.infinity.core.trip.infrastructure.repository.TripSeatRepository;
import org.infinity.core.trip.infrastructure.repository.TripStationRepository;
import org.infinity.core.trip.model.po.TripPO;
import org.infinity.core.trip.model.po.TripSeatPO;
import org.infinity.core.trip.model.po.TripStationPO;
import org.infinity.core.user.infrastructure.repository.UserRepository;
import org.infinity.core.user.model.po.UserPO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import java.util.stream.IntStream;

import static com.google.common.collect.ImmutableList.toImmutableList;
import static com.google.common.collect.ImmutableSet.toImmutableSet;
import static java.util.stream.Collectors.toMap;
import static org.infinity.core.common.constants.I12306Constants.DEFAULT_COMMAND_TPS;
import static org.infinity.core.common.exception.ErrorCodeEnum.*;
import static org.infinity.core.common.utils.MapUtils.mapOf;
import static org.infinity.core.common.utils.ValidationUtils.isEmpty;
import static org.infinity.core.common.utils.ValidationUtils.isNull;
import static org.infinity.core.order.infrastructure.handler.seatallocate.SeatAllocateHandler.SeatAllocateStrategyEnum.LINEAR;
import static org.infinity.core.order.model.OrderStatusEnum.ON_BOARD;
import static org.infinity.core.order.model.OrderStatusEnum.OUT_OF_STATION;
import static org.infinity.core.trip.model.po.TripStationPO.findTripStationIndex;

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
    private final TripSeatRepository tripSeatRepository;
    private final RateLimiter rateLimiter;
    private final OrderFactory orderFactory;
    private final PriceCalculateHandler priceCalculateHandler;

    private static final SeatAllocateHandler SEAT_ALLOCATE_HANDLER = SeatAllocateHandler.newInstance(LINEAR);

    @Override
    @Transactional
    public CreateOrderResponse createOrder(CreateOrderCommand command) {
        rateLimiter.applyFor("Order:buyTicket", DEFAULT_COMMAND_TPS);

        // 校验实名认证
        UserPO user = userRepository.cachedById(command.getUserId());
        if(!user.isRealNameVerify()) {
            throw new MyException(NOT_REAL_NAME_VERIFY_YET, "You have no real name authentication.",
                    mapOf("userId", command.getUserId()));
        }

        // 座位分配
        TripPO trip = tripRepository.cachedById(command.getTripId());
        List<TripStationPO> tripStations = tripStationRepository.listByTripId(trip.getId());
        int sourceStationIndex = findTripStationIndex(tripStations, command.getSourceTripStationId());
        int dstStationIndex = findTripStationIndex(tripStations, command.getDstTripStationId());
        if (sourceStationIndex > dstStationIndex) {
            throw new MyException(LEFT_GREATER_THAN_RIGHT, "Interval is invalid.",
                    mapOf("sourceStationId", sourceStationIndex, "distStationId", dstStationIndex));
        }
        List<TripSeatPO> tripSeats = tripSeatRepository.listByTripId(trip.getId());
        List<TripSeatPO> filteredTripSeats = filterTripSeatsByLevel(tripSeats, CarriageLevelEnum.of(command.getSeatLevel()));
        if (isEmpty(filteredTripSeats)) {
            throw new MyException(NO_SUCH_SEAT, "There is no seat that satisfies the condition.",
                    mapOf("sourceStationId", sourceStationIndex, "distStationId", dstStationIndex, "seatLevel", command.getSeatLevel()));
        }
        TripSeatPO tripSeat = SEAT_ALLOCATE_HANDLER.allocateSeat(filteredTripSeats, sourceStationIndex, dstStationIndex);
        tripSeatRepository.updateById(tripSeat);

        // 计算价格
        List<TripStationPO> stationsBeRidden = IntStream.rangeClosed(sourceStationIndex, dstStationIndex)
                .mapToObj(tripStations::get)
                .collect(toImmutableList());
        BigDecimal price = priceCalculateHandler.calculatePrice(
                PriceContext.builder()
                        .tripStations(stationsBeRidden)
                        .build(),
                PromotionContext.builder()
                        .role(user.getRole())
                        .build()
        );

        // 订单落库
        OrderPO order = orderFactory.createByBuyTicketCommand(command, tripSeat.getSeatId(), price, stationsBeRidden.size());
        orderRepository.save(order);
        return CreateOrderResponse.builder()
                .orderId(order.getId())
                .build();
    }

    @Override
    public CheckInResponse checkin(CheckInCommand command) {
        rateLimiter.applyFor("Order:checkin", DEFAULT_COMMAND_TPS);

        OrderPO order = orderRepository.cachedById(command.getOrderId());
        if(isNull(order)) {
            throw new MyException(ORDER_NOT_FOUND, "Order not found.", mapOf("orderId", command.getOrderId()));
        }

        orderRepository.updateStatus(command.getOrderId(), ON_BOARD);

        return CheckInResponse.builder()
                .isSuccess(true)
                .build();
    }

    @Override
    public OutboundResponse outbound(OutboundCommand command) {
        rateLimiter.applyFor("Order:outbound", DEFAULT_COMMAND_TPS);

        OrderPO order = orderRepository.cachedById(command.getOrderId());
        if(isNull(order)) {
            throw new MyException(ORDER_NOT_FOUND, "Order not found.", mapOf("orderId", command.getOrderId()));
        }

        orderRepository.updateStatus(command.getOrderId(), OUT_OF_STATION);

        return OutboundResponse.builder()
                .isSuccess(true)
                .build();
    }

    private List<TripSeatPO> filterTripSeatsByLevel(List<TripSeatPO> tripSeats, CarriageLevelEnum level) {
        Set<String> seatIds = tripSeats.stream()
                .map(TripSeatPO::getSeatId)
                .collect(toImmutableSet());
        Map<String, SeatPO> seatMap = seatRepository.listByIds(seatIds).stream()
                .collect(toMap(SeatPO::getId, Function.identity()));

        Set<String> carriageIds = seatMap.values().stream()
                .map(SeatPO::getCarriageId)
                .collect(toImmutableSet());
        Map<String, CarriagePO> carriageMap = carriageRepository.listByIds(carriageIds)
                .stream()
                .collect(toMap(CarriagePO::getId, Function.identity()));

        return tripSeats.stream()
                .filter(tripSeat -> {
                    SeatPO seat = seatMap.get(tripSeat.getSeatId());
                    if (isNull(seat)) {
                        return false;
                    }
                    CarriagePO carriage = carriageMap.get(seat.getCarriageId());
                    if (isNull(carriage)) {
                        return false;
                    }
                    return carriage.getLevel() == level;
                })
                .collect(toImmutableList());
    }


}
