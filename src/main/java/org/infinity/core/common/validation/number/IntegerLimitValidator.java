package org.infinity.core.common.validation.number;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;
import org.infinity.core.common.utils.ValidationUtils;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/26
 * @className IntegerLimitValidator
 * @desc
 */
public class IntegerLimitValidator implements ConstraintValidator<IntegerLimit, Integer> {

    private int min;
    private int max;

    @Override
    public void initialize(IntegerLimit integerLimit) {
        this.min = integerLimit.min();
        this.max = integerLimit.max();
    }

    @Override
    public boolean isValid(Integer number, ConstraintValidatorContext constraintValidatorContext) {
        if(ValidationUtils.isNull(number)) {
            return true;
        }

        return number >= min && number <= max;
    }
}
