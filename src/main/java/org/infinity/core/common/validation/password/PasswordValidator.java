package org.infinity.core.common.validation.password;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;
import org.apache.commons.lang3.StringUtils;

import java.util.regex.Pattern;

import static org.infinity.core.common.constants.I12306RegexConstants.PASSWORD_PATTERN;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/9/24
 * @className PasswordValidator
 * @desc
 */
public class PasswordValidator implements ConstraintValidator<Password, String> {

    private static final Pattern PATTERN = Pattern.compile(PASSWORD_PATTERN);

    @Override
    public boolean isValid(String value, ConstraintValidatorContext constraintValidatorContext) {
        if (StringUtils.isBlank(value)) {
            return true;
        }

        return PATTERN.matcher(value).matches();
    }
}
