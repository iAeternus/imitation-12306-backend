package org.infinity.core.order.model.po;

import lombok.Data;

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

    private String id;

    private String userId;

    private LocalDateTime departureAt;

}
