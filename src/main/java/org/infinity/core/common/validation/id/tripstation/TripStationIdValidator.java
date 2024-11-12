package org.infinity.core.common.validation.id.tripstation;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

import java.util.regex.Pattern;

import static org.infinity.core.common.utils.ValidationUtils.isBlank;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className StationIdValidator
 * @desc
 */
public class TripStationIdValidator implements ConstraintValidator<TripStationId, String> {
    private static final Pattern PATTERN = Pattern.compile("^TPS[0-9]{17,19}$");

    @Override
    public boolean isValid(String tripStationId, ConstraintValidatorContext constraintValidatorContext) {
        if (isBlank(tripStationId)) {
            return true;
        }

        return isTripStationId(tripStationId);
    }

    public static boolean isTripStationId(String tripStationId) {
        return PATTERN.matcher(tripStationId).matches();
    }
}
