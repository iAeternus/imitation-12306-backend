package org.infinity.core.common.validation.id.train;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

import java.util.regex.Pattern;

import static org.infinity.core.common.constants.I12306Constants.TRAIN_ID_PREFIX;
import static org.infinity.core.common.utils.ValidationUtils.isBlank;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/26
 * @className TrainIdValidator
 * @desc
 */
public class TrainIdValidator implements ConstraintValidator<TrainId, String> {

    private static final Pattern PATTERN = Pattern.compile("^" + TRAIN_ID_PREFIX + "[0-9]{17,19}$");

    @Override
    public boolean isValid(String trainId, ConstraintValidatorContext constraintValidatorContext) {
        if (isBlank(trainId)) {
            return true;
        }

        return isTrainId(trainId);
    }

    public static boolean isTrainId(String tripId) {
        return PATTERN.matcher(tripId).matches();
    }

}
