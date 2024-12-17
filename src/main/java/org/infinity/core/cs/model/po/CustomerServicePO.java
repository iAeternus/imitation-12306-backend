package org.infinity.core.cs.model.po;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.infinity.core.common.utils.SnowflakeIdGenerator;
import org.infinity.core.common.validation.collection.NoNullElement;

import java.time.LocalDateTime;

import static org.infinity.core.common.constants.I12306Constants.CUSTOMER_SERVICE_ID_PREFIX;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/16
 * @className CustomerServicePO
 * @desc 在线客服
 */
@Data
@TableName("cs")
@NoArgsConstructor
public class CustomerServicePO {

    /**
     * ID
     */
    @TableId
    private String id;

    /**
     * 站点ID
     */
    private String stationId;

    /**
     * 电话号码
     */
    private String phoneNumber;

    /**
     * 服务时间（24小时制 eg 9:00-17:00）
     */
    private String serverTime;

    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createAt;
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateAt;

    public CustomerServicePO(String stationId, String phoneNumber, String serverTime) {
        this.id = newCustomerServiceId();
        this.stationId = stationId;
        this.phoneNumber = phoneNumber;
        this.serverTime = serverTime;
    }

    public static String newCustomerServiceId() {
        return CUSTOMER_SERVICE_ID_PREFIX + SnowflakeIdGenerator.newSnowflakeId();
    }

}
