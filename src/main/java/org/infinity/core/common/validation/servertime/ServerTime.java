package org.infinity.core.common.validation.servertime;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

import static java.lang.annotation.ElementType.*;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/17
 * @className ServerTime
 * @desc
 */
@Target({METHOD, FIELD, ANNOTATION_TYPE, CONSTRUCTOR, PARAMETER, TYPE_USE})
@Retention(RUNTIME)
@Constraint(validatedBy = ServerTimeValidator.class)
@Documented
public @interface ServerTime {

    String message() default "Server time format is incorrect.";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};

}
