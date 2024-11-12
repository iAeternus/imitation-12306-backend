package org.infinity.core.train.model.po;

import lombok.Data;
import org.infinity.core.common.utils.SnowflakeIdGenerator;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className TripStationPO
 * @desc
 */
@Data
public class TripStationPO {

    /**
     * ID
     */
    private String id;

    /**
     * 车次ID
     */
    private String tripId;

    // TODO add here...

    /**
     * 站点顺序
     */
    private Integer order;

    public static String newTripStationId() {
        return "TPS" + SnowflakeIdGenerator.newSnowflakeId();
    }

}
