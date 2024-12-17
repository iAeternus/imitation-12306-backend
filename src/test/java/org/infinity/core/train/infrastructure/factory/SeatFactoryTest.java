package org.infinity.core.train.infrastructure.factory;

import org.infinity.core.train.model.po.CarriagePO;
import org.infinity.core.train.model.po.SeatPO;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.infinity.core.train.model.CarriageLevelEnum.FIRST_CLASS;
import static org.infinity.core.train.model.CarriageLevelEnum.SECOND_CLASS;
import static org.junit.jupiter.api.Assertions.assertEquals;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/11
 * @className SeatFactoryTest
 * @desc
 */
@SpringBootTest
class SeatFactoryTest {

    @Autowired
    private SeatFactory seatFactory;

    @Test
    void should_seat_seat() {
        // Given
        String carriageId = CarriagePO.newCarriageId();
        int index1 = 1;
        int index2 = 4;
        int index3 = 5;
        int index4 = 6;

        // When
        SeatPO seat1 = seatFactory.create(carriageId, index1, FIRST_CLASS); // 01A
        SeatPO seat2 = seatFactory.create(carriageId, index2, FIRST_CLASS); // 01F
        SeatPO seat3 = seatFactory.create(carriageId, index3, SECOND_CLASS); // 01F
        SeatPO seat4 = seatFactory.create(carriageId, index3, FIRST_CLASS); // 02A
        SeatPO seat5 = seatFactory.create(carriageId, index4, SECOND_CLASS); // 02A

        // Then
        assertEquals("01A", seat1.getSeatNumber());
        assertEquals("01F", seat2.getSeatNumber());
        assertEquals("01F", seat3.getSeatNumber());
        assertEquals("02A", seat4.getSeatNumber());
        assertEquals("02A", seat5.getSeatNumber());
    }

}