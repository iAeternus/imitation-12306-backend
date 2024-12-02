package org.infinity.core.common.validation.id.trip;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

import java.util.regex.Pattern;

import static org.infinity.core.common.constants.I12306Constants.TRIP_ID_PREFIX;
import static org.infinity.core.common.utils.ValidationUtils.isBlank;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className TrainIdValidator
 * @desc
 */
public class TripIdValidator implements ConstraintValidator<TripId, String> {

    private static final Pattern PATTERN = Pattern.compile("^" + TRIP_ID_PREFIX + "[0-9]{17,19}$");

    @Override
    public boolean isValid(String tripId, ConstraintValidatorContext constraintValidatorContext) {
        if (isBlank(tripId)) {
            return true;
        }

        return isTripId(tripId);
    }

    public static boolean isTripId(String tripId) {
        return PATTERN.matcher(tripId).matches();
    }

}
