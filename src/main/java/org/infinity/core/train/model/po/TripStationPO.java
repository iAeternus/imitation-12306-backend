package org.infinity.core.train.model.po;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import org.infinity.core.common.utils.SnowflakeIdGenerator;

import java.time.LocalDateTime;

import static org.infinity.core.common.constants.I12306Constants.TRIP_STATION_ID_PREFIX;

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
    @TableId
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
        return TRIP_STATION_ID_PREFIX + SnowflakeIdGenerator.newSnowflakeId();
    }

}
