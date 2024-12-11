package org.infinity.core.order.model.po;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Builder;
import lombok.Data;
import org.infinity.core.common.utils.SnowflakeIdGenerator;
import org.infinity.core.order.model.OrderStatusEnum;
import org.infinity.core.order.model.SeatLevelEnum;

import java.math.BigDecimal;
import java.time.LocalDateTime;

import static org.infinity.core.common.constants.I12306Constants.ORDER_ID_PREFIX;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/4
 * @className OrderPO
 * @desc
 */
@Data
@Builder
@TableName("order")
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
     * 座位ID
     */
    private String seatId;

    /**
     * 起点站车次站点ID
     */
    private String originTripStationId;

    /**
     * 终点站车次站点ID
     */
    private String terminalTripStationId;

    /**
     * 价格
     */
    private BigDecimal price;

    /**
     * 状态（待支付，已支付，已上车，已出站）
     */
    private OrderStatusEnum status;

    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createAt;
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateAt;

    public static String newOrderId() {
        return ORDER_ID_PREFIX + SnowflakeIdGenerator.newSnowflakeId();
    }

}
