package org.infinity.core.train.model.po;

import lombok.Data;
import org.infinity.core.common.utils.SnowflakeIdGenerator;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className CarriagePO
 * @desc 车厢
 */
@Data
public class CarriagePO {

    /**
     * ID
     */
    private String id;

    /**
     * 列车ID
     */
    private String trainId;

    // TODO add here...

    public static String newCarId() {
        return "CAR" + SnowflakeIdGenerator.newSnowflakeId();
    }

}
