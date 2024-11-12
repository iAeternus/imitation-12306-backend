package org.infinity.core.order.infrastructure.handler.pricecalculate;

import lombok.Builder;
import lombok.Data;
import org.infinity.core.train.model.po.TripStationPO;

import java.util.List;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className PriceContext
 * @desc 价格上下文
 */
@Data
@Builder
public class PriceContext {

    /**
     * 车次站点集合
     */
    List<TripStationPO> tripStations;

}
