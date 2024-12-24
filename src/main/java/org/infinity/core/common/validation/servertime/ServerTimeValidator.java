package org.infinity.core.common.validation.servertime;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

import java.util.regex.Pattern;

import static org.infinity.core.common.constants.I12306RegexConstants.TIME_REGEX;
import static org.infinity.core.common.utils.ValidationUtils.isBlank;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/17
 * @className ServerTimeValidator
 * @desc
 */
public class ServerTimeValidator implements ConstraintValidator<ServerTime, String> {

    private static final Pattern PATTERN = Pattern.compile(TIME_REGEX);

    @Override
    public boolean isValid(String serverTime, ConstraintValidatorContext constraintValidatorContext) {
        if (isBlank(serverTime)) {
            return true;
        }

        return isServerTime(serverTime);
    }

    public static boolean isServerTime(String serverTime) {
        return PATTERN.matcher(serverTime).matches();
    }

}
