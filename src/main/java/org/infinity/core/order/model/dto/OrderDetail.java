package org.infinity.core.order.model.dto;

import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/18
 * @className OrderDetail
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class OrderDetail {

    @Schema(name = "实名")
    String realName;

    @Schema(name = "车次")
    String tripId; // TODO 增加车次生成系统，这里是车次

    @Schema(name = "座位号")
    String seatCode;

    @Schema(name = "乘坐站点区间（闭区间）")
    List<String> stations;

    @Schema(name = "价格")
    BigDecimal price;

    @Schema(name = "订单状态（0-待支付，1-已支付，2-已上车，3-已出站）")
    Short status;

    @Schema(name = "最后修改时间")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    LocalDateTime updateAt;

}
