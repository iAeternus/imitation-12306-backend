package org.infinity.core.common.domain.intervalset;

import org.infinity.core.common.exception.MyException;
import org.junit.jupiter.api.Test;

import static org.infinity.core.train.infrastructure.handler.LongIntervalSeatHandler.*;
import static org.junit.jupiter.api.Assertions.*;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/16
 * @className LongIntervalSeatHolderTest
 * @desc
 */
class LongIntervalSeatHolderTest {

    @Test
    void should_maintain_flag() {
        // Given
        int stationCount = 10;
        long flag;

        // When
        flag = initOccupiedInterval(stationCount);

        // Then
        assertTrue(isValid(flag, 0, 10));

        // When
        flag = occupy(flag, 3, 10);

        // Then
        assertTrue(isValid(flag, 0, 3));
        assertFalse(isValid(flag, 0, 4));

        long finalFlag = flag;
        assertThrows(MyException.class, () -> isValid(finalFlag, 10, 10));
    }

    @Test
    void should_maintain_flag2() {
        // Given
        int stationCount = 10;
        long flag = initOccupiedInterval(stationCount);

        // When
        flag = occupy(flag, 0, 3);
        flag = occupy(flag, 5, 7);

        // Then
        assertTrue(isValid(flag, 3, 5));
        assertTrue(isValid(flag, 7, 9));
        assertFalse(isValid(flag, 2, 6));
    }

}