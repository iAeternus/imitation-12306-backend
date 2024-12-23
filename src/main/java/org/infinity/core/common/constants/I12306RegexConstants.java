package org.infinity.core.common.constants;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/19
 * @className I12306RegexConstants
 * @desc
 */
public interface I12306RegexConstants {

    String MOBILE_PATTERN = "^[1]([3-9])[0-9]{9}$";
    String EMAIL_PATTERN = "^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$";
    String PASSWORD_PATTERN = "^[A-Za-z\\d!@#$%^&*()_+]{8,20}$";
    String ID_CARD_REGEX = "^(?:\\d{6})(?:18|19|20)\\d{2}(?:0[1-9]|1[0-2])(?:0[1-9]|[12]\\d|3[01])(?:\\d{3})[\\dXx]$";
    String TIME_REGEX = "^(2[0-3]|[01]?[0-9]):([0-5][0-9])-(2[0-3]|[01]?[0-9]):([0-5][0-9])$";
    String VERIFICATION_CODE_PATTERN = "^[0-9]{6}$";

}
