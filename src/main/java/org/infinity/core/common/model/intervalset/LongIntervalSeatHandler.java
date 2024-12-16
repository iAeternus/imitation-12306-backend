package org.infinity.core.common.model.intervalset;

import org.infinity.core.common.exception.MyException;
import org.springframework.security.core.parameters.P;

import static org.infinity.core.common.exception.ErrorCodeEnum.INVALID_INTERVAL;
import static org.infinity.core.common.exception.ErrorCodeEnum.INVALID_STATION_COUNT;
import static org.infinity.core.common.utils.MapUtils.mapOf;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/16
 * @className LongIntervalSeatHandler
 * @desc
 */
public class LongIntervalSeatHandler {

    public static final int MIN_STATION_COUNT = 2;
    public static final int MAX_STATION_COUNT = 64;

    public static long initOccupiedInterval(int stationCount) {
        if(stationCount < MIN_STATION_COUNT || stationCount > MAX_STATION_COUNT) {
            throw new MyException(INVALID_STATION_COUNT, "Invalid station count", mapOf("stationCount", stationCount));
        }
        return 0L;
    }

    public static boolean isValid(long flag, int i, int j) {
        if (i >= j) {
            throw new MyException(INVALID_INTERVAL, "The source station must be before the dest station.",
                    mapOf("Source station", i, "Dest station", j));
        }
        long mask = ((1L << j) - 1) ^ ((1L << i) - 1);
        return (flag & mask) == 0;
    }

    public static long occupy(long flag, int i, int j) {
        if (i >= j) {
            throw new MyException(INVALID_INTERVAL, "The source station must be before the dest station.",
                    mapOf("Source station", i, "Dest station", j));
        }
        long mask = ((1L << j) - 1) ^ ((1L << i) - 1);
        return flag | mask;
    }

}
