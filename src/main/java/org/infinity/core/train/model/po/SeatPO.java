package org.infinity.core.train.model.po;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import org.infinity.core.common.utils.SnowflakeIdGenerator;
import org.infinity.core.train.model.SeatLetterEnum;

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
    private Integer rowNumber;

    /**
     * 座位字母
     */
    private SeatLetterEnum letter;

    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createAt;
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateAt;

    public SeatPO(String carriageId, Integer rowNumber, SeatLetterEnum letter) {
        this.id = newSeatId();
        this.carriageId = carriageId;
        this.rowNumber = rowNumber;
        this.letter = letter;
    }

    public static String newSeatId() {
        return SEAT_ID_PREFIX + SnowflakeIdGenerator.newSnowflakeId();
    }

    public String getSeatNumber() {
        return String.format("%02d", rowNumber) + letter.name();
    }

}
