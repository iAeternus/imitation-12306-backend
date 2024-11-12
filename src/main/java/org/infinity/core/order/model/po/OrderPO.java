package org.infinity.core.order.model.po;

import lombok.Data;
import org.infinity.core.order.model.OrderStatusEnum;
import org.infinity.core.order.model.SeatLevelEnum;

import java.math.BigDecimal;
import java.time.LocalDateTime;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/4
 * @className OrderPO
 * @desc
 */
@Data
public class OrderPO {

    /**
     * ID
     */
    private String id;

    /**
     * 用户ID
     */
    private String userId;

    /**
     * 车次ID
     */
    private String tripId;

    /**
     * 发车时间
     */
    private LocalDateTime departureAt;

    /**
     * 起点站车次站点ID
     */
    private String originTripStationId;

    /**
     * 终点站车次站点ID
     */
    private String terminalTripStationId;

    /**
     * 座位等级
     */
    private SeatLevelEnum seatLevel;

    /**
     * 价格
     */
    private BigDecimal price;

    /**
     * 状态（待支付，已支付，已上车，已出站）
     */
    private OrderStatusEnum status;

    private LocalDateTime createAt;
    private LocalDateTime updateAt;
    private String createBy;
    private String updateBy;

}
