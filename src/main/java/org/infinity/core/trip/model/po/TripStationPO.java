package org.infinity.core.trip.model.po;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.infinity.core.common.exception.MyException;
import org.infinity.core.common.utils.SnowflakeIdGenerator;
import org.infinity.core.common.utils.ValidationUtils;

import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.IntStream;

import static org.infinity.core.common.constants.I12306Constants.TRIP_STATION_ID_PREFIX;
import static org.infinity.core.common.exception.ErrorCodeEnum.TRIP_STATION_NOT_FOUND;
import static org.infinity.core.common.utils.MapUtils.mapOf;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className TripStationPO
 * @desc 车次站点信息，常作为List的元素，此时为闭区间
 */
@Data
@NoArgsConstructor
@TableName("trip_station")
public class TripStationPO implements Comparable<TripStationPO> {

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
    private Integer orderNum;

    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createAt;
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateAt;

    public TripStationPO(String tripId, String stationId, LocalDateTime arrivalAt, Integer retentionTime, Integer orderNum) {
        this.id = newTripStationId();
        this.tripId = tripId;
        this.stationId = stationId;
        this.arrivalAt = arrivalAt;
        this.retentionTime = retentionTime;
        this.orderNum = orderNum;
    }

    public static String newTripStationId() {
        return TRIP_STATION_ID_PREFIX + SnowflakeIdGenerator.newSnowflakeId();
    }

    @Override
    public int compareTo(TripStationPO o) {
        return this.orderNum.compareTo(o.orderNum);
    }

    /**
     * 寻找站点索引，索引从0开始
     */
    public static int findTripStationIndex(List<TripStationPO> tripStations, String tripStationId) {
        return IntStream.range(0, tripStations.size())
                .filter(i -> ValidationUtils.equals(tripStations.get(i).getId(), tripStationId))
                .findFirst()
                .orElseThrow(() -> new MyException(TRIP_STATION_NOT_FOUND, "Trip Station not found.", mapOf("sourceStationId", tripStationId)));
    }
}
