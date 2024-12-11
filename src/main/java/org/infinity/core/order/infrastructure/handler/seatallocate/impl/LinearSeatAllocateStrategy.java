package org.infinity.core.order.infrastructure.handler.seatallocate.impl;

import org.infinity.core.common.exception.MyException;
import org.infinity.core.order.infrastructure.handler.seatallocate.SeatAllocateStrategy;
import org.infinity.core.train.model.po.SeatPO;
import org.infinity.core.train.model.po.TripSeatPO;

import java.util.List;

import static org.infinity.core.common.exception.ErrorCodeEnum.NO_SUCH_SEAT;
import static org.infinity.core.common.utils.MapUtils.mapOf;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className LinearSeatAllocateStrategy
 * @desc 顺序分配
 */
public class LinearSeatAllocateStrategy implements SeatAllocateStrategy {
    @Override
    public TripSeatPO allocateSeat(List<TripSeatPO> tripSeats, int sourceStationIndex, int distStationIndex) {
        TripSeatPO allocatedSeat = tripSeats.stream()
                .filter(seat -> seat.isSeatEffectiveDuringInterval(sourceStationIndex, distStationIndex))
                .findFirst()
                .orElseThrow(() -> new MyException(NO_SUCH_SEAT, "There is no seat that satisfies the condition.",
                        mapOf("sourceStationId", sourceStationIndex, "distStationId", distStationIndex)));
        allocatedSeat.occupyInterval(sourceStationIndex, distStationIndex);
        return allocatedSeat;
    }
}
