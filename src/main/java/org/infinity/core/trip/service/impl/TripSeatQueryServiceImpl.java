package org.infinity.core.trip.service.impl;

import lombok.RequiredArgsConstructor;
import org.infinity.core.common.exception.MyException;
import org.infinity.core.train.infrastructure.repository.CarriageRepository;
import org.infinity.core.train.infrastructure.repository.SeatRepository;
import org.infinity.core.train.model.dto.query.SearchSpareTicketQuery;
import org.infinity.core.train.model.dto.response.SearchSpareTicketResponse;
import org.infinity.core.train.model.po.CarriagePO;
import org.infinity.core.train.model.po.SeatPO;
import org.infinity.core.trip.infrastructure.repository.TripSeatRepository;
import org.infinity.core.trip.infrastructure.repository.TripStationRepository;
import org.infinity.core.trip.model.po.TripSeatPO;
import org.infinity.core.trip.model.po.TripStationPO;
import org.infinity.core.trip.service.TripSeatQueryService;
import org.springframework.data.util.Pair;
import org.springframework.stereotype.Service;

import java.util.AbstractMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;

import static com.google.common.collect.ImmutableList.toImmutableList;
import static java.util.stream.Collectors.*;
import static org.infinity.core.common.exception.ErrorCodeEnum.LEFT_GREATER_THAN_RIGHT;
import static org.infinity.core.common.utils.MapUtils.mapOf;
import static org.infinity.core.train.infrastructure.handler.LongIntervalSeatHandler.isValid;
import static org.infinity.core.trip.model.po.TripStationPO.findTripStationIndex;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/17
 * @className TripSeatQueryServiceImpl
 * @desc
 */
@Service
@RequiredArgsConstructor
public class TripSeatQueryServiceImpl implements TripSeatQueryService {

    private final TripSeatRepository tripSeatRepository;
    private final SeatRepository seatRepository;
    private final CarriageRepository carriageRepository;
    private final TripStationRepository tripStationRepository;

    @Override
    public SearchSpareTicketResponse searchSpareTicket(SearchSpareTicketQuery query) {
        List<TripSeatPO> tripSeats = tripSeatRepository.listByTripId(query.getTripId());

        // 查询起点站、终点站索引
        List<TripStationPO> tripStations = tripStationRepository.listByTripId(query.getTripId());
        int sourceStationIndex = findTripStationIndex(tripStations, query.getSourceTripStationId());
        int dstStationIndex = findTripStationIndex(tripStations, query.getDstTripStationId());
        if (sourceStationIndex > dstStationIndex) {
            throw new MyException(LEFT_GREATER_THAN_RIGHT, "Interval is invalid.",
                    mapOf("sourceStationId", sourceStationIndex, "distStationId", dstStationIndex));
        }

        // 键 tripId-seatId 值 tripSeat
        Map<Pair<String, String>, TripSeatPO> pairTripSeatMap = tripSeats.stream() // tripId-seatId 能唯一确定一个 tripSeat
                .filter(tripSeat -> isValid(tripSeat.getOccupiedIntervalFlag(), sourceStationIndex, dstStationIndex))
                .collect(toMap(entry -> {
                    String tripId = entry.getTripId();
                    String seatId = entry.getSeatId();
                    return Pair.of(tripId, seatId);
                }, Function.identity()));

        List<SeatPO> seats = seatRepository.listByIds(pairTripSeatMap.values().stream()
                .map(TripSeatPO::getSeatId)
                .collect(toImmutableList()));
        Map<String, List<SeatPO>> carriageIdSeats = seats.stream()
                .collect(groupingBy(SeatPO::getCarriageId));
        Map<String, List<TripSeatPO>> carriageIdTripSeats = carriageIdSeats.entrySet().stream()
                .collect(toMap(Map.Entry::getKey, entry -> entry.getValue().stream()
                        .map(seatPO -> pairTripSeatMap.get(Pair.of(query.getTripId(), seatPO.getId())))
                        .collect(toImmutableList())));

        // 键 车厢 值 该车厢的车次座位
        Map<CarriagePO, List<TripSeatPO>> carriageSeats = carriageRepository.getLevelByCarriageSeats(carriageIdTripSeats);

        return SearchSpareTicketResponse.builder()
                .spareTicket(carriageSeats.entrySet().stream()
                        .flatMap(entry -> entry.getValue().stream()
                                .map(seat -> new AbstractMap.SimpleEntry<>(entry.getKey().getLevel(), seat))
                                .collect(toImmutableList())
                                .stream())
                        .collect(groupingBy(Map.Entry::getKey, mapping(Map.Entry::getValue, counting()))))
                .build();
    }

}
