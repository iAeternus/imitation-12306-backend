package org.infinity.core.train.model.po;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import org.infinity.core.common.utils.SnowflakeIdGenerator;

import java.time.LocalDateTime;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className TripStationPO
 * @desc
 */
@Data
@TableName("trip_station")
public class TripStationPO {

    /**
     * ID
     */
    private String id;

    /**
     * 车次ID
     */
    private String tripId;

    // TODO add here...

    /**
     * 站点顺序
     */
    private Integer order;

    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createAt;
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateAt;

    public static String newTripStationId() {
        return "TPS" + SnowflakeIdGenerator.newSnowflakeId();
    }

}
