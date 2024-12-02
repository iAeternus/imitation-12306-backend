package org.infinity.utils;

import com.apifan.common.random.source.PersonInfoSource;
import lombok.Data;
import org.infinity.core.common.exception.MyException;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import static org.apache.commons.lang3.RandomStringUtils.randomAlphanumeric;
import static org.apache.commons.lang3.RandomUtils.nextInt;
import static org.apache.commons.lang3.RandomUtils.nextLong;
import static org.infinity.core.common.exception.ErrorCodeEnum.LEFT_GREATER_THAN_RIGHT;
import static org.infinity.core.common.utils.MapUtils.mapOf;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className RandomTestFixture
 * @desc
 */
public class RandomTestFixture {

    public static List<Integer> rIntList() {
        return rIntList(rInt(0, (1 << 15) - 1)); // [0, 32767]
    }

    public static List<Integer> rIntList(int size) {
        return rIntList(size, 0, 1 << 10); // [0, 1024]
    }

    public static List<Integer> rIntList(int size, int minInclusive, int maxInclusive) {
        if (size < 0) {
            return Collections.emptyList();
        }
        List<Integer> ans = new ArrayList<>(size);
        for (int i = 0; i < size; ++i) {
            ans.add(rInt(minInclusive, maxInclusive));
        }
        return ans;
    }

    public static int rNonNegativeInt(int maxInclusive) {
        if (maxInclusive <= 0) {
            return 0;
        }

        return rInt(0, maxInclusive);
    }

    public static int rInt(int minInclusive, int maxInclusive) {
        return nextInt(minInclusive, maxInclusive);
    }

    public static ClosedInterval rClosedInterval(int minInclusive, int maxInclusive) {
        int left = minInclusive + rInt(0, maxInclusive);
        int right = Integer.MAX_VALUE;
        while (right > maxInclusive || right < left) {
            right = left + rInt(0, maxInclusive);
        }
        return ClosedInterval.of(left, right);
    }

    public static String rRawUserName() {
        return PersonInfoSource.getInstance().randomChineseName();
    }

    public static String rNickname() {
        return rRawUserName() + randomAlphanumeric(10);
    }

    public static String rMobile() {
        return String.valueOf(nextLong(13000000000L, 19000000000L));
    }

    public static String rPassword() {
        return randomAlphanumeric(10);
    }

    public static String defaultId(String prefix) {
        return prefix + "000000000000000001";
    }

    /**
     * 闭区间
     */
    @Data
    public static class ClosedInterval {
        private int left;
        private int right;

        private ClosedInterval(int left, int right) {
            if (left > right) {
                throw new MyException(LEFT_GREATER_THAN_RIGHT, "Interval is valid.", mapOf("left", left, "right", right));
            }

            this.left = left;
            this.right = right;
        }

        public static ClosedInterval of(int left, int right) {
            return new ClosedInterval(left, right);
        }

        public int duration() {
            return right - left + 1;
        }
    }

}
