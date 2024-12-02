package org.infinity.core.station.model.po;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import org.infinity.core.common.utils.SnowflakeIdGenerator;

import java.time.LocalDateTime;

import static org.infinity.core.common.constants.I12306Constants.STATION_ID_PREFIX;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className StationPO
 * @desc
 */
@Data
@TableName("station")
public class StationPO {

    @TableId
    private String id;

    /**
     * 机构代码
     */
    private Character bureauCode;

    /**
     * 站点名称
     */
    private String stationName;

    /**
     * 站点电报码
     */
    private String stationTelecode;

    private String saleTime;

    /**
     * 开始运营日期
     */
    private String startDate;

    /**
     * 停止运营日期
     */
    private String stopDate;

    /**
     * 操作时间
     */
    private LocalDateTime operateTime;

    public static String newStationId() {
        return STATION_ID_PREFIX + SnowflakeIdGenerator.newSnowflakeId();
    }

}
