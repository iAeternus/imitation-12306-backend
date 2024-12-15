package org.infinity.core.train.model.po;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.infinity.core.common.constants.I12306Constants;
import org.infinity.core.common.utils.SnowflakeIdGenerator;
import org.infinity.core.train.model.CarriageLevelEnum;
import org.infinity.core.train.model.CarriageTypeEnum;

import java.time.LocalDateTime;

import static org.infinity.core.common.constants.I12306Constants.CARRIAGE_ID_PREFIX;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className CarriagePO
 * @desc 车厢
 */
@Data
@NoArgsConstructor
@TableName("carriage")
public class CarriagePO {

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
     * 车厢号
     */
    private String number;

    /**
     * 车厢等级（一等，二等）
     */
    private CarriageLevelEnum level;

    /**
     * 类型（客运车厢，货运车厢）
     */
    private CarriageTypeEnum type;

    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createAt;
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateAt;

    public CarriagePO(String trainId, String number, CarriageLevelEnum level, CarriageTypeEnum type) {
        this.id = newCarriageId();
        this.trainId = trainId;
        this.number = number;
        this.level = level;
        this.type = type;
    }

    public static String newCarriageId() {
        return CARRIAGE_ID_PREFIX + SnowflakeIdGenerator.newSnowflakeId();
    }

}
