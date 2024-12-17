package org.infinity.core.order.infrastructure.repository.cache;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.infinity.core.order.infrastructure.mapper.OrderMapper;
import org.infinity.core.order.model.dto.response.SearchOrderDetailResponse;
import org.infinity.core.order.model.po.OrderPO;
import org.infinity.core.station.infrastructure.repository.StationRepository;
import org.infinity.core.train.infrastructure.repository.SeatRepository;
import org.infinity.core.train.model.po.SeatPO;
import org.infinity.core.trip.infrastructure.repository.TripStationRepository;
import org.infinity.core.trip.model.po.TripStationPO;
import org.infinity.core.user.infrastructure.repository.UserRepository;
import org.infinity.core.user.model.po.UserPO;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.cache.annotation.Caching;
import org.springframework.stereotype.Repository;

import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.stream.IntStream;

import static com.google.common.collect.ImmutableList.toImmutableList;
import static org.infinity.core.common.constants.I12306Constants.ORDER_CACHE;
import static org.infinity.core.common.constants.I12306Constants.ORDER_DETAIL_CACHE;
import static org.infinity.core.common.utils.ValidationUtils.requireNonBlank;
import static org.infinity.core.trip.model.po.TripStationPO.findTripStationIndex;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className MysqlOrderCachedRepository
 * @desc
 */
@Slf4j
@Repository
@RequiredArgsConstructor
public class MysqlOrderCachedRepository extends ServiceImpl<OrderMapper, OrderPO> {

    private final UserRepository userRepository;
    private final SeatRepository seatRepository;
    private final TripStationRepository tripStationRepository;
    private final StationRepository stationRepository;

    @Cacheable(value = ORDER_CACHE, key = "#orderId")
    public OrderPO cachedById(String orderId) {
        requireNonBlank(orderId, "Order ID must not be blank.");

        return super.getById(orderId);
    }

    @Caching(evict = {@CacheEvict(value = ORDER_CACHE, key = "#orderId")})
    public void evictOrderCache(String orderId) {
        requireNonBlank(orderId, "Order ID must not be blank.");

        log.info("Evicted cache for order[{}].", orderId);
    }

    @Cacheable(value = ORDER_DETAIL_CACHE, key = "#orderId")
    public SearchOrderDetailResponse searchOrderDetail(String orderId) {
        OrderPO order = cachedById(orderId);
        UserPO user = userRepository.cachedById(order.getUserId());
        SeatPO seat = seatRepository.cachedById(order.getSeatId());

        List<TripStationPO> tripStations = tripStationRepository.listByTripId(order.getTripId());
        tripStations.sort(Comparator.naturalOrder());
        int sourceTripStationIndex = findTripStationIndex(tripStations, order.getSourceTripStationId());
        int dstTripStationIndex = findTripStationIndex(tripStations, order.getDstTripStationId());
        List<String> filteredTripStationIds = IntStream.rangeClosed(sourceTripStationIndex, dstTripStationIndex)
                .mapToObj(tripStations::get)
                .map(TripStationPO::getStationId)
                .collect(toImmutableList());
        Map<String, String> stationId2StationName = stationRepository.listStationIdAndStationName(filteredTripStationIds);

        return SearchOrderDetailResponse.builder()
                .realName(user.getRealName())
                .tripId(order.getTripId())
                .seatCode(seat.getSeatCode())
                .stations(filteredTripStationIds.stream()
                        .map(stationId2StationName::get)
                        .collect(toImmutableList()))
                .price(order.getPrice())
                .status(order.getStatus().getKey())
                .updateAt(order.getUpdateAt())
                .build();
    }

    @Caching(evict = {@CacheEvict(value = ORDER_DETAIL_CACHE, key = "#orderId")})
    public void evictOrderDetailCache(String orderId) {
        requireNonBlank(orderId, "Order ID must not be blank.");

        log.info("Evicted cache for order[{}].", orderId);
    }

}
