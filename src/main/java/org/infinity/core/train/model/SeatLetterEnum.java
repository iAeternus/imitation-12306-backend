package org.infinity.core.train.model;

import com.baomidou.mybatisplus.annotation.EnumValue;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/2
 * @className SeatLetterEnum
 * @desc
 */
public enum SeatLetterEnum {

    A('A'),
    B('B'),
    C('C'),
    D('D'),
    F('F'),
    ;

    @EnumValue
    final char letter;

    SeatLetterEnum(char letter) {
        this.letter = letter;
    }

    public static char firstClassOf(int col) {
        return switch (col) {
            case 1 -> 'A';
            case 2 -> 'C';
            case 3 -> 'D';
            case 4 -> 'F';
            default -> throw new IllegalStateException("Unexpected value: " + col);
        };
    }

    public static char secondClassOf(int col) {
        return switch (col) {
            case 1 -> 'A';
            case 2 -> 'B';
            case 3 -> 'C';
            case 4 -> 'D';
            case 5 -> 'F';
            default -> throw new IllegalStateException("Unexpected value: " + col);
        };
    }

}
