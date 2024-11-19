package org.infinity.core.train.model.po;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import org.infinity.core.common.utils.SnowflakeIdGenerator;
import org.infinity.core.train.model.SeatLetterEnum;

import java.time.LocalDateTime;
import java.util.BitSet;
import java.util.stream.IntStream;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className SeatPO
 * @desc 座位
 * @see <a href="https://zhuanlan.zhihu.com/p/266329767">使用类BitMap方式实现12306余票分配设计思路与基本算法</a>
 */
@Data
@TableName("seat")
public class SeatPO {

    /**
     * 座位ID
     */
    private String id;

    /**
     * 座位所在编组号
     */
    private String carId;

    /**
     * 座位字母
     */
    private SeatLetterEnum letter;

    /**
     * 区间占用标记
     * true=可用 false=不可用
     */
    private BitSet occupiedIntervalFlag;

    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createAt;
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateAt;

    public static String newSeatId() {
        return "SEAT" + SnowflakeIdGenerator.newSnowflakeId();
    }

    /**
     * 判断请求区间是否可用
     */
    public boolean isSeatEffectiveDuringInterval(int sourceStationId, int distStationId) {
        return IntStream.range(sourceStationId, distStationId).allMatch(i -> occupiedIntervalFlag.get(i));
    }

    /**
     * 修改区间为不可用
     */
    public void occupyInterval(int sourceStationId, int distStationId) {
        IntStream.range(sourceStationId, distStationId).forEach(i -> occupiedIntervalFlag.set(i));
    }

}
