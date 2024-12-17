package org.infinity.core.trip.model.po;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.infinity.core.common.utils.SnowflakeIdGenerator;

import java.time.LocalDateTime;

import static org.infinity.core.common.constants.I12306Constants.TRIP_SEAT_ID_PREFIX;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/3
 * @className TripSeatPO
 * @desc 车次座位
 * @see <a href="https://zhuanlan.zhihu.com/p/266329767">使用类BitMap方式实现12306余票分配设计思路与基本算法</a>
 */
@Data
@NoArgsConstructor
@TableName("trip_seat")
public class TripSeatPO {

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
     * 座位ID
     */
    private String seatId;

    /**
     * 区间占用标记，有可能为null
     * true=可用 false=不可用
     */
    private Long occupiedIntervalFlag;
    // // @TableField(insertStrategy = IGNORED) TODO
    // @TableField(typeHandler = BitSetTypeHandler.class)
    // private BitSet occupiedIntervalFlag;

    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createAt;
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateAt;

    public TripSeatPO(String tripId, String seatId) {
        this.id = newTripSeatId();
        this.tripId = tripId;
        this.seatId = seatId;
        this.occupiedIntervalFlag = 0L;
    }

    public static String newTripSeatId() {
        return TRIP_SEAT_ID_PREFIX + SnowflakeIdGenerator.newSnowflakeId();
    }

    // public void initOccupiedIntervalFlag(int stationCount) {
    //     if (isNull(occupiedIntervalFlag)) {
    //         this.occupiedIntervalFlag = new BitSet(stationCount);
    //     }
    // }
    //
    // /**
    //  * 判断请求区间是否可用
    //  */
    // public boolean isSeatEffectiveDuringInterval(int sourceStationId, int distStationId) {
    //     return IntStream.range(sourceStationId, distStationId).allMatch(i -> occupiedIntervalFlag.get(i));
    // }
    //
    // /**
    //  * 修改区间为不可用
    //  */
    // public void occupyInterval(int sourceStationId, int distStationId) {
    //     IntStream.range(sourceStationId, distStationId).forEach(i -> occupiedIntervalFlag.set(i));
    // }

}
