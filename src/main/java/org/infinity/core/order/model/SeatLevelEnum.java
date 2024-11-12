package org.infinity.core.order.model;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className SeatLevelEnum
 * @desc 座位等级
 */
public enum SeatLevelEnum {

    BUSINESS_CLASS,
    FIRST_CLASS,
    SECOND_CLASS,
    ;

    public static SeatLevelEnum of(Integer value) {
        return switch (value) {
            case 0 -> BUSINESS_CLASS;
            case 1 -> FIRST_CLASS;
            case 2 -> SECOND_CLASS;
            default -> throw new IllegalStateException("Unexpected value: " + value);
        };
    }

}
