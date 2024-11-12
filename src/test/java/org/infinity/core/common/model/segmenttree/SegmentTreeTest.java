package org.infinity.core.common.model.segmenttree;

import org.infinity.core.common.exception.MyException;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.List;
import java.util.OptionalInt;
import java.util.stream.IntStream;

import static org.infinity.core.common.exception.ErrorCodeEnum.INVALID_INTERVAL;
import static org.infinity.core.common.utils.MapUtils.mapOf;
import static org.infinity.utils.RandomTestFixture.*;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className SegmentTreeTest
 * @desc
 */
class SegmentTreeTest {

    @Test
    void should_calculate_range_sum() {
        // Given
        List<Integer> nums = rIntList();
        SegmentTree segmentTree = new SegmentTree(nums);

        // When
        int res1 = segmentTree.rangeSum(0, segmentTree.getSize() - 1);

        ClosedInterval rClosedInterval = rClosedInterval(0, segmentTree.getSize() - 1);
        int res2 = segmentTree.rangeSum(rClosedInterval.getLeft(), rClosedInterval.getRight());

        // Then
        assertEquals(rangeSum(nums, 0, nums.size() - 1), res1);
        assertEquals(rangeSum(nums, rClosedInterval.getLeft(), rClosedInterval.getRight()), res2);
    }

    @Test
    void should_fail_when_range_is_invalid() {
        // Given
        List<Integer> nums2 = new ArrayList<>();
        nums2.add(1);
        nums2.add(null);

        // When & Then
        assertThrows(NullPointerException.class, () -> new SegmentTree(nums2));

        assertThrows(MyException.class, () -> {
            SegmentTree segmentTree = new SegmentTree(List.of(1, 2, 3, 4, 5));
            segmentTree.rangeSum(0, -1);
        });

        assertThrows(MyException.class, () -> {
            SegmentTree segmentTree = new SegmentTree(List.of(1, 2, 3, 4, 5));
            segmentTree.rangeMaxValue(0, -1);
        });

        assertThrows(MyException.class, () -> {
            SegmentTree segmentTree = new SegmentTree(List.of(1, 2, 3, 4, 5));
            segmentTree.rangeUpdate(0, -1, 1);
        });
    }

    @Test
    void should_get_range_max_value() {
        // Given
        List<Integer> nums = rIntList();
        SegmentTree segmentTree = new SegmentTree(nums);

        // When
        int res1 = segmentTree.rangeMaxValue(0, segmentTree.getSize() - 1);

        ClosedInterval rClosedInterval = rClosedInterval(0, segmentTree.getSize() - 1);
        int res2 = segmentTree.rangeMaxValue(rClosedInterval.getLeft(), rClosedInterval.getRight());

        // Then
        assertEquals(rangeMaxValue(nums, 0, nums.size() - 1), res1);
        assertEquals(rangeMaxValue(nums, rClosedInterval.getLeft(), rClosedInterval.getRight()), res2);
    }

    @Test
    void should_range_update() {
        // Given
        SegmentTree segmentTree = new SegmentTree(List.of(2, 5, 4, 7, 6, 0, 1, -1, 2, 3, 6, 7, 0, 2, 9, 8, 5, 4, 7, 2));

        // When
        segmentTree.rangeUpdate(2, 5, 5);

        // Then
        assertEquals(20, segmentTree.rangeSum(2, 5));

        // When
        segmentTree.rangeUpdate(0, segmentTree.getSize() - 1, 5);

        // Then
        assertEquals(100, segmentTree.rangeSum(0, segmentTree.getSize() - 1));

        // When
        segmentTree.update(10, -5);

        // Then
        assertEquals(90, segmentTree.rangeSum(0, segmentTree.getSize() - 1));
    }

    /**
     * 求闭区间和 O(n)算法
     *
     * @param nums  集合
     * @param left  区间下界（包含）
     * @param right 区间上界（包含）
     * @return 闭区间和
     */
    private static int rangeSum(List<Integer> nums, int left, int right) {
        if (left < 0 || right >= nums.size() || left > right) {
            throw new MyException(INVALID_INTERVAL, "Invalid interval", mapOf("left", left, "right", right));
        }

        return nums.stream()
                .skip(left)
                .limit(right - left + 1)
                .mapToInt(Integer::intValue)
                .sum();
    }

    /**
     * 求闭区间最大值 O(n)算法
     *
     * @param nums  集合
     * @param left  区间下界（包含）
     * @param right 区间上界（包含）
     * @return 闭区间最大值
     */
    private static int rangeMaxValue(List<Integer> nums, int left, int right) {
        if (left < 0 || right >= nums.size() || left > right) {
            throw new MyException(INVALID_INTERVAL, "Invalid interval", mapOf("left", left, "right", right));
        }

        OptionalInt optionalMax = IntStream.range(left, right + 1)
                .mapToObj(nums::get)
                .mapToInt(Integer::intValue)
                .max();
        return optionalMax.isPresent() ? optionalMax.getAsInt() : Integer.MIN_VALUE;
    }

}