package org.infinity.core.common.validation.collection;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import static java.lang.annotation.ElementType.*;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/10/27
 * @className NoBlankString
 * @desc
 */
@Target({METHOD, FIELD, ANNOTATION_TYPE, CONSTRUCTOR, PARAMETER, TYPE_USE})
@Retention(RetentionPolicy.RUNTIME)
@Constraint(validatedBy = NoBlankStringValidator.class)
@Documented
public @interface NoBlankString {

    String message() default "Collection must not contain blank string.";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
