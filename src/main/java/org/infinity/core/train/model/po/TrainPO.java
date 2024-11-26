package org.infinity.core.train.model.po;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import org.infinity.core.common.utils.SnowflakeIdGenerator;

import java.time.LocalDateTime;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className TrainPO
 * @desc
 */
@Data
@TableName("train")
public class TrainPO {

    private String id;

    // TODO

    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createAt;
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateAt;

    public static String newTrainId() {
        return "TRA" + SnowflakeIdGenerator.newSnowflakeId();
    }

}
