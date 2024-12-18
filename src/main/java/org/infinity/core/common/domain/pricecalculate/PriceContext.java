package org.infinity.core.common.domain.pricecalculate;

import lombok.Builder;
import lombok.Data;
import org.infinity.core.train.model.CarriageLevelEnum;
import org.infinity.core.trip.model.po.TripStationPO;

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

    /**
     * 车厢等级
     */
    CarriageLevelEnum level;

}
