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
 * @desc 车次站点信息，常作为List的元素，此时为闭区间
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

    /**
     * 站点ID
     */
    private String stationId;

    /**
     * 到点（开点 = 到点 + 停留时间）
     */
    private LocalDateTime arrivalAt;

    /**
     * 停留时间（单位 分钟）
     */
    private Integer retentionTime;

    /**
     * 站点顺序
     */
    private Integer order;

    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createAt;
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateAt;

    public TripStationPO(String tripId, String stationId, LocalDateTime arrivalAt, Integer retentionTime, Integer order) {
        this.id = newTripStationId();
        this.tripId = tripId;
        this.stationId = stationId;
        this.arrivalAt = arrivalAt;
        this.retentionTime = retentionTime;
        this.order = order;
    }

    public static String newTripStationId() {
        return TRIP_STATION_ID_PREFIX + SnowflakeIdGenerator.newSnowflakeId();
    }

}
