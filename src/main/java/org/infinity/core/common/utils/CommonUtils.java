package org.infinity.core.common.utils;

import static java.util.regex.Pattern.matches;
import static org.infinity.core.common.constants.I12306RegexConstants.MOBILE_PATTERN;
import static org.infinity.core.common.utils.ValidationUtils.isBlank;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/10/26
 * @className CommonUtils
 * @desc
 */
public class CommonUtils {

    public static String maskMobileOrEmail(String mobileOrEmail) {
        if (isBlank(mobileOrEmail)) {
            return mobileOrEmail;
        }

        if (isMobileNumber(mobileOrEmail)) {
            return mobileOrEmail.replaceAll("(\\w{3})\\w*(\\w{4})", "$1****$2");
        }

        return mobileOrEmail.replaceAll("(^[^@]{3}|(?!^)\\G)[^@]", "$1*");
    }

    public static boolean isMobileNumber(String value) {
        return matches(MOBILE_PATTERN, value);
    }

}
