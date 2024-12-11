package org.infinity.core.order.infrastructure.handler.seatallocate;

import lombok.Getter;
import org.infinity.core.order.infrastructure.handler.seatallocate.impl.LinearSeatAllocateStrategy;
import org.infinity.core.train.model.po.SeatPO;
import org.infinity.core.train.model.po.TripSeatPO;

import java.util.List;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className SeatAllocateHandler
 * @desc
 */
public class SeatAllocateHandler implements SeatAllocateStrategy {

    private final SeatAllocateStrategy seatAllocateStrategy;

    private SeatAllocateHandler(SeatAllocateStrategy seatAllocateStrategy) {
        this.seatAllocateStrategy = seatAllocateStrategy;
    }

    public static SeatAllocateHandler newInstance(SeatAllocateStrategyEnum strategy) {
        return new SeatAllocateHandler(strategy.getSeatAllocateStrategy());
    }

    @Override
    public TripSeatPO allocateSeat(List<TripSeatPO> tripSeats, int sourceStationIndex, int distStationIndex) {
        return seatAllocateStrategy.allocateSeat(tripSeats, sourceStationIndex, distStationIndex);
    }

    /**
     * 座位分配策略枚举
     */
    @Getter
    public enum SeatAllocateStrategyEnum {
        LINEAR(new LinearSeatAllocateStrategy()),
        ;

        final SeatAllocateStrategy seatAllocateStrategy;

        SeatAllocateStrategyEnum(SeatAllocateStrategy seatAllocateStrategy) {
            this.seatAllocateStrategy = seatAllocateStrategy;
        }
    }

}
