package org.infinity.core.common.validation.id.verificationcode;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

import java.util.regex.Pattern;

import static org.infinity.core.common.constants.I12306Constants.USER_ID_PREFIX;
import static org.infinity.core.common.constants.I12306Constants.VERIFICATION_CODE_ID_PREFIX;
import static org.infinity.core.common.utils.ValidationUtils.isBlank;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/23
 * @className VerificationCodeValidator
 * @desc
 */
public class VerificationCodeValidator implements ConstraintValidator<VerificationCodeId, String> {

    private static final Pattern PATTERN = Pattern.compile("^" + VERIFICATION_CODE_ID_PREFIX + "[0-9]{17,19}$");

    @Override
    public boolean isValid(String verificationCodeId, ConstraintValidatorContext constraintValidatorContext) {
        if(isBlank(verificationCodeId)) {
            return true;
        }
        return isVerificationCodeId(verificationCodeId);
    }

    public static boolean isVerificationCodeId(String verificationCodeId) {
        return PATTERN.matcher(verificationCodeId).matches();
    }

}
