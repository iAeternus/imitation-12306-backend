package org.infinity.core.train.model.po;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.infinity.core.common.utils.SnowflakeIdGenerator;

import java.time.LocalDateTime;

import static org.infinity.core.common.constants.I12306Constants.TRAIN_ID_PREFIX;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className TrainPO
 * @desc
 */
@Data
@TableName("train")
@NoArgsConstructor
public class TrainPO {

    @TableId
    private String id;

    /**
     * 列车名称（eg 复兴号）
     */
    private String name;

    /**
     * 列车型号（eg CR400AF）
     */
    private String model;

    /**
     * 列车编组（eg 8）
     */
    private Integer formation;

    /**
     * 列车长度（单位：米eg 209）
     */
    private Integer length;

    /**
     * 列车定员（eg 576）
     */
    private Integer capacity;

    /**
     * 最高时速（单位：km/h eg 350）
     */
    private Integer topSpeed;

    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createAt;
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateAt;

    public TrainPO(String name, String model, Integer formation, Integer length, Integer capacity, Integer topSpeed) {
        this.id = newTrainId();
        this.name = name;
        this.model = model;
        this.formation = formation;
        this.length = length;
        this.capacity = capacity;
        this.topSpeed = topSpeed;
    }

    public static String newTrainId() {
        return TRAIN_ID_PREFIX + SnowflakeIdGenerator.newSnowflakeId();
    }

}
