package org.infinity.core.order.infrastructure.handler.seatallocate;

import org.infinity.core.train.model.po.SeatPO;

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
     * @param seats              该车次所有座位的区间占用标记
     * @param sourceStationIndex 起点站ID
     * @param distStationIndex   目的地ID
     * @return 分配的座位
     */
    SeatPO allocateSeat(List<SeatPO> seats, int sourceStationIndex, int distStationIndex);

}
