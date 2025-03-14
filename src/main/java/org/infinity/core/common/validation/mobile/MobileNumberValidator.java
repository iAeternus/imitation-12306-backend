package org.infinity.core.common.validation.mobile;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

import java.util.regex.Pattern;

import static org.apache.commons.lang3.StringUtils.isBlank;
import static org.infinity.core.common.constants.I12306RegexConstants.MOBILE_PATTERN;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/10/27
 * @className MobileNumberValidator
 * @desc
 */
public class MobileNumberValidator implements ConstraintValidator<Mobile, String> {

    private static final Pattern PATTERN = Pattern.compile(MOBILE_PATTERN);

    @Override
    public boolean isValid(String value, ConstraintValidatorContext context) {
        if (isBlank(value)) {
            return true;
        }

        return PATTERN.matcher(value).matches();
    }
}
