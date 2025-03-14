package org.infinity.core.trip.model.po;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.infinity.core.common.utils.SnowflakeIdGenerator;
import org.infinity.core.trip.model.TripStatusEnum;

import java.time.LocalDateTime;

import static org.infinity.core.common.constants.I12306Constants.TRIP_ID_PREFIX;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className TripPO
 * @desc
 */
@Data
@TableName("trip")
@NoArgsConstructor
public class TripPO {

    /**
     * ID
     */
    @TableId
    private String id;

    /**
     * 列车ID
     */
    private String trainId;

    /**
     * 起点站ID
     */
    private String originStationId;

    /**
     * 发车时间
     */
    private LocalDateTime startAt;

    /**
     * 终点站ID
     */
    private String terminalStationId;

    /**
     * 终到时间
     */
    private LocalDateTime endAt;

    /**
     * 状态（0-正点、1-晚点、2-取消、3-结束）
     */
    private TripStatusEnum status;

    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createAt;
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateAt;

    public static String newTripId() {
        return TRIP_ID_PREFIX + SnowflakeIdGenerator.newSnowflakeId();
    }

    public TripPO(String trainId, String originStationId, LocalDateTime startAt, String terminalStationId, LocalDateTime endAt) {
        this.id = newTripId();
        this.trainId = trainId;
        this.originStationId = originStationId;
        this.startAt = startAt;
        this.terminalStationId = terminalStationId;
        this.endAt = endAt;
        this.status = TripStatusEnum.ON_SCHEDULE;
    }
}
