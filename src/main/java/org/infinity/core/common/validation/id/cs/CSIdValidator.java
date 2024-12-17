package org.infinity.core.common.validation.id.cs;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

import java.util.regex.Pattern;

import static org.infinity.core.common.constants.I12306Constants.CUSTOMER_SERVICE_ID_PREFIX;
import static org.infinity.core.common.utils.ValidationUtils.isBlank;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/17
 * @className CSIdValidator
 * @desc
 */
public class CSIdValidator implements ConstraintValidator<CSId, String> {

    private static final Pattern PATTERN = Pattern.compile("^" + CUSTOMER_SERVICE_ID_PREFIX + "[0-9]{17,19}$");

    @Override
    public boolean isValid(String csId, ConstraintValidatorContext constraintValidatorContext) {
        if(isBlank(csId)) {
            return true;
        }

        return isCSId(csId);
    }

    public static boolean isCSId(String csId) {
        return PATTERN.matcher(csId).matches();
    }

}
