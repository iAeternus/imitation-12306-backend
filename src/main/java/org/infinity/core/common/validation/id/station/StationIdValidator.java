package org.infinity.core.common.validation.id.station;

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
public class StationIdValidator implements ConstraintValidator<StationId, String> {
    private static final Pattern PATTERN = Pattern.compile("^STT[0-9]{17,19}$");

    @Override
    public boolean isValid(String stationId, ConstraintValidatorContext constraintValidatorContext) {
        if (isBlank(stationId)) {
            return true;
        }

        return isStationId(stationId);
    }

    public static boolean isStationId(String StationId) {
        return PATTERN.matcher(StationId).matches();
    }
}
