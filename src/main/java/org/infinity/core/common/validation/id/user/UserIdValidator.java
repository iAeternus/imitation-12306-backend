package org.infinity.core.common.validation.id.user;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

import java.util.regex.Pattern;

import static org.infinity.core.common.utils.ValidationUtils.isBlank;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className UserIdValidator
 * @desc
 */
public class UserIdValidator implements ConstraintValidator<UserId, String> {
    private static final Pattern PATTERN = Pattern.compile("^USR[0-9]{17,19}$");

    @Override
    public boolean isValid(String userId, ConstraintValidatorContext constraintValidatorContext) {
        if (isBlank(userId)) {
            return true;
        }

        return isUserId(userId);
    }

    public static boolean isUserId(String userId) {
        return PATTERN.matcher(userId).matches();
    }
}
