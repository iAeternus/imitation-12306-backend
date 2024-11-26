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
    F('E'),
    ;

    @EnumValue
    final char letter;

    SeatLetterEnum(char letter) {
        this.letter = letter;
    }
}
