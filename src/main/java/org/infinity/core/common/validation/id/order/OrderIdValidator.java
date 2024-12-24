package org.infinity.core.common.validation.id.order;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

import java.util.regex.Pattern;

import static org.infinity.core.common.constants.I12306Constants.ORDER_ID_PREFIX;
import static org.infinity.core.common.utils.ValidationUtils.isBlank;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/17
 * @className OrderIdValidator
 * @desc
 */
public class OrderIdValidator implements ConstraintValidator<OrderId, String> {

    private static final Pattern PATTERN = Pattern.compile("^" + ORDER_ID_PREFIX + "[0-9]{17,19}$");

    @Override
    public boolean isValid(String orderId, ConstraintValidatorContext constraintValidatorContext) {
        if (isBlank(orderId)) {
            return true;
        }

        return isOrderId(orderId);
    }

    public static boolean isOrderId(String orderId) {
        return PATTERN.matcher(orderId).matches();
    }

}
