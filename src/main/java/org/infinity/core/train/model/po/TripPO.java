package org.infinity.core.train.model.po;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import org.infinity.core.common.utils.SnowflakeIdGenerator;
import org.infinity.core.train.model.TripStatusEnum;

import java.time.LocalDateTime;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className TripPO
 * @desc
 */
@Data
@TableName("trip")
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
     * 状态（正点、晚点、取消）
     */
    private TripStatusEnum status;

    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createAt;
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateAt;

    public static String newTripId() {
        return "TRP" + SnowflakeIdGenerator.newSnowflakeId();
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
