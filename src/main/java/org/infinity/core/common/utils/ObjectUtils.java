package org.infinity.core.common.utils;

import java.util.function.Supplier;

import static org.infinity.core.common.utils.ValidationUtils.isNull;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/4
 * @className ObjectUtils
 * @desc
 */
public class ObjectUtils {

    public static <T> T defaultIfNull(T object, T defaultValue) {
        return isNull(object) ? defaultValue : object;
    }

    public static <T> T defaultIfNull(T source, Supplier<? extends T> defaultValueSupplier) {
        return isNull(source) ? defaultValueSupplier.get() : source;
    }

}
