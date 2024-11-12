package org.infinity.core.station.model.po;

import lombok.Data;
import org.infinity.core.common.utils.SnowflakeIdGenerator;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className StationPO
 * @desc
 */
@Data
public class StationPO {

    private String id;

    public static String newStationId() {
        return "STT" + SnowflakeIdGenerator.newSnowflakeId();
    }

}
