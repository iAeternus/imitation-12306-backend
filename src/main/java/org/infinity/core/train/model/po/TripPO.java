package org.infinity.core.train.model.po;

import lombok.Data;
import org.infinity.core.common.utils.SnowflakeIdGenerator;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className TripPO
 * @desc
 */
@Data
public class TripPO {

    /**
     * ID
     */
    private String id;

    /**
     * 列车ID
     */
    private String trainId;

    // TODO add here...

    public static String newTripId() {
        return "TRP" + SnowflakeIdGenerator.newSnowflakeId();
    }

}
