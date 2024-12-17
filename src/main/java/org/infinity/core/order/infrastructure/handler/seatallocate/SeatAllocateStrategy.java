package org.infinity.core.order.infrastructure.handler.seatallocate;

import org.infinity.core.trip.model.po.TripSeatPO;

import java.util.List;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className SeatAllocateStrategy
 * @desc 座位分配策略
 */
public interface SeatAllocateStrategy {

    /**
     * 分配座位
     *
     * @param tripSeats          该车次的所有座位
     * @param sourceStationIndex 起点站ID
     * @param distStationIndex   目的地ID
     * @return 分配的座位
     */
    TripSeatPO allocateSeat(List<TripSeatPO> tripSeats, int sourceStationIndex, int distStationIndex);

}
