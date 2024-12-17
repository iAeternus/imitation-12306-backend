package org.infinity.core.train.model.po;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.infinity.core.common.utils.SnowflakeIdGenerator;

import java.time.LocalDateTime;

import static org.infinity.core.common.constants.I12306Constants.SEAT_ID_PREFIX;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className SeatPO
 * @desc 座位
 */
@Data
@NoArgsConstructor
@TableName("seat")
public class SeatPO {

    /**
     * 座位ID
     */
    @TableId
    private String id;

    /**
     * 座位所在车厢号
     */
    private String carriageId;

    /**
     * 排数
     */
    private Integer ithRow;

    /**
     * 座位字母
     */
    private Character letter;

    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createAt;
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateAt;

    public SeatPO(String carriageId, Integer ithRow, Character letter) {
        this.id = newSeatId();
        this.carriageId = carriageId;
        this.ithRow = ithRow;
        this.letter = letter;
    }

    public static String newSeatId() {
        return SEAT_ID_PREFIX + SnowflakeIdGenerator.newSnowflakeId();
    }

    public String getSeatCode() {
        return String.format("%02d", ithRow) + letter;
    }

}
