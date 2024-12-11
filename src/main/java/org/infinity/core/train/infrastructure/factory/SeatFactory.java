package org.infinity.core.train.infrastructure.factory;

import org.infinity.core.train.model.CarriageLevelEnum;
import org.infinity.core.train.model.SeatLetterEnum;
import org.infinity.core.train.model.po.SeatPO;
import org.springframework.security.core.parameters.P;
import org.springframework.stereotype.Component;

import static org.infinity.core.train.model.CarriageLevelEnum.FIRST_CLASS;
import static org.infinity.core.train.model.SeatLetterEnum.firstClassOf;
import static org.infinity.core.train.model.SeatLetterEnum.secondClassOf;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/11
 * @className SeatFactory
 * @desc
 */
@Component
public class SeatFactory {

    public static final int FIRST_CLASS_ROW = 13;
    public static final int FIRST_CLASS_COLUMN = 4;
    public static final int SECOND_CLASS_ROW = 20;
    public static final int SECOND_CLASS_COLUMN = 5;

    public SeatPO create(String carriageId, int index, CarriageLevelEnum level) {
        if(level == FIRST_CLASS) {
            return createFirstClass(carriageId, index);
        }
        return createSecondClass(carriageId, index);
    }

    private SeatPO createFirstClass(String carriageId, int index) {
        int row = (index - 1) / FIRST_CLASS_COLUMN + 1;
        int col = (index - 1) % FIRST_CLASS_COLUMN + 1;
        return new SeatPO(carriageId, row, firstClassOf(col));
    }

    private SeatPO createSecondClass(String carriageId, int index) {
        int row = (index - 1) / SECOND_CLASS_COLUMN + 1;
        int col = (index - 1) % SECOND_CLASS_COLUMN + 1;
        return new SeatPO(carriageId, row, secondClassOf(col));
    }

}
