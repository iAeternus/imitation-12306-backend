package org.infinity.core.common.validation.idcard;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;
import org.infinity.core.common.constants.I12306RegexConstants;

import java.util.regex.Pattern;

import static org.infinity.core.common.constants.I12306RegexConstants.ID_CARD_REGEX;
import static org.infinity.core.common.utils.ValidationUtils.isBlank;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/16
 * @className IdCardValidator
 * @desc
 */
public class IdCardValidator implements ConstraintValidator<IdCard, String> {

    private static final Pattern PATTERN = Pattern.compile(ID_CARD_REGEX);

    @Override
    public boolean isValid(String idCard, ConstraintValidatorContext constraintValidatorContext) {
        if(isBlank(idCard)) {
            return true;
        }

        return PATTERN.matcher(idCard).matches();
    }
}
