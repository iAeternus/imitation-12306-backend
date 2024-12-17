package org.infinity.core.train.infrastructure.repository.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import org.infinity.core.common.exception.MyException;
import org.infinity.core.train.infrastructure.mapper.SeatMapper;
import org.infinity.core.train.infrastructure.repository.SeatRepository;
import org.infinity.core.train.infrastructure.repository.cache.MysqlSeatCachedRepository;
import org.infinity.core.train.model.po.SeatPO;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

import static com.google.common.collect.ImmutableList.toImmutableList;
import static java.util.stream.Collectors.groupingBy;
import static java.util.stream.Collectors.toMap;
import static org.infinity.core.common.exception.ErrorCodeEnum.EMPTY_COLLECTION;
import static org.infinity.core.common.utils.MapUtils.mapOf;
import static org.infinity.core.common.utils.ValidationUtils.*;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className MysqlSeatRepository
 * @desc
 */
@Repository
@RequiredArgsConstructor
public class MysqlSeatRepository extends ServiceImpl<SeatMapper, SeatPO> implements SeatRepository {

    private final MysqlSeatCachedRepository seatCachedRepository;

    @Override
    public List<SeatPO> listByCarriageIds(List<String> carriageIds) {
        List<SeatPO> seats = lambdaQuery().in(SeatPO::getCarriageId, carriageIds).list();
        if (isEmpty(seats)) {
            throw new MyException(EMPTY_COLLECTION, "The carriage with carriage ID [" + carriageIds + "] has an empty seat list",
                    mapOf("carriageIds", carriageIds));
        }
        return seats;
    }

    @Override
    public Map<String, List<SeatPO>> listByTrainIds(Map<String, List<String>> trainCarriageIds) {
        List<String> carriageIds = trainCarriageIds.values().stream()
                .flatMap(List::stream)
                .collect(toImmutableList());
        List<SeatPO> seats = lambdaQuery().in(SeatPO::getCarriageId, carriageIds).list();
        if (isEmpty(seats)) {
            String trainIdsStr = String.join(", ", trainCarriageIds.keySet());
            throw new MyException(EMPTY_COLLECTION, "The carriage in train [" + trainIdsStr + "] has an empty seat list",
                    mapOf("trainIds", trainIdsStr));
        }
        Map<String, List<SeatPO>> carriageSeats = seats.stream()
                .collect(groupingBy(SeatPO::getCarriageId));
        return trainCarriageIds.entrySet().parallelStream() // 并行加速
                .collect(toMap(Map.Entry::getKey, entry -> entry.getValue().stream()
                        .flatMap(carriageId -> carriageSeats.get(carriageId).stream())
                        .collect(toImmutableList())));
    }

    @Override
    public SeatPO cachedById(String id) {
        requireNonBlank(id, "Seat ID must not be blank");

        return seatCachedRepository.cachedById(id);
    }
}
