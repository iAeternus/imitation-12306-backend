package org.infinity.core.common.domain.segmenttree;

import jakarta.validation.constraints.NotNull;
import lombok.Data;
import lombok.Getter;
import org.infinity.core.common.exception.MyException;
import org.infinity.core.common.validation.collection.NoNullElement;

import java.util.List;

import static org.infinity.core.common.exception.ErrorCodeEnum.LEFT_GREATER_THAN_RIGHT;
import static org.infinity.core.common.utils.MapUtils.mapOf;
import static org.infinity.core.common.utils.ValidationUtils.isNull;
import static org.infinity.core.common.utils.ValidationUtils.requireNonNull;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className SegmentTree
 * @desc 线段树
 */
@Deprecated
public class SegmentTree {

    /**
     * 原数组长度
     */
    @Getter
    private Integer size;

    /**
     * 根节点
     */
    private final Node root;

    public SegmentTree(@NotNull @NoNullElement List<Integer> initValues) {
        this.size = initValues.size();
        this.root = buildTree(0, initValues.size() - 1, initValues.stream()
                .mapToInt(Integer::intValue)
                .toArray());
    }

    private Node buildTree(int left, int right, int[] value) {
        Node node = new Node(value[left], left, right);
        if (left == right) {
            node.setMaxValue(node.getValue());
            node.setSum(node.getValue());
            return node;
        }
        int mid = (left + right) >>> 1;
        node.setLeftChild(buildTree(left, mid, value));
        node.setRightChild(buildTree(mid + 1, right, value));
        if (isNull(node.getLeftChild())) {
            if (isNull(node.getRightChild())) {
                node.setMaxValue(node.getValue());
                node.setSum(node.getValue());
            } else {
                node.setMaxValue(node.getRightChild().getMaxValue());
                node.setSum(node.getRightChild().getSum());
            }
        } else {
            if (isNull(node.getRightChild())) {
                node.setMaxValue(node.getLeftChild().getMaxValue());
                node.setSum(node.getLeftChild().getSum());
            } else {
                node.setMaxValue(Math.max(node.getLeftChild().getMaxValue(), node.getRightChild().getMaxValue()));
                node.setSum(node.getLeftChild().getSum() + node.getRightChild().getSum());
            }
        }
        return node;
    }

    /**
     * 计算区间和
     *
     * @param left  区间下界（包含）
     * @param right 区间上界（包含）
     * @return [left, right] 区间和
     */
    public Integer rangeSum(int left, int right) {
        if (isInValidInterval(left, right)) {
            throw new MyException(LEFT_GREATER_THAN_RIGHT, "Interval is valid.", mapOf("left", left, "right", right));
        }

        return rangeSum(root, left, right);
    }

    private Integer rangeSum(Node node, int left, int right) {
        if (isNull(node)) {
            return null;
        }
        if (node.getLeft() == left && node.getRight() == right) {
            return node.getSum();
        }
        int segMid = (node.getLeft() + node.getRight()) >>> 1;
        if (segMid < left) {
            return rangeSum(node.getRightChild(), left, right);
        }
        if (segMid >= right) {
            return rangeSum(node.getLeftChild(), left, right);
        }
        Integer leftSum = rangeSum(node.getLeftChild(), left, segMid);
        Integer rightSum = rangeSum(node.getRightChild(), segMid + 1, right);
        if (isNull(leftSum)) {
            return isNull(rightSum) ? node.getSum() : rightSum;
        } else {
            return isNull(rightSum) ? leftSum : leftSum + rightSum;
        }
    }

    /**
     * 查询区间最大值
     *
     * @param left  区间下界（包含）
     * @param right 区间上界（包含）
     * @return [left, right] 最大值
     */
    public Integer rangeMaxValue(int left, int right) {
        if (isInValidInterval(left, right)) {
            throw new MyException(LEFT_GREATER_THAN_RIGHT, "Interval is valid.", mapOf("left", left, "right", right));
        }

        return rangeMaxValue(root, left, right);
    }

    private Integer rangeMaxValue(Node node, int left, int right) {
        if (isNull(node)) {
            return null;
        }
        if (node.getLeft() == left && node.getRight() == right) {
            return node.getMaxValue();
        }
        int segMid = (node.getLeft() + node.getRight()) >>> 1;
        if (segMid < left) {
            return rangeMaxValue(node.getRightChild(), left, right);
        }
        if (segMid >= right) {
            return rangeMaxValue(node.getLeftChild(), left, right);
        }
        Integer leftMax = rangeMaxValue(node.getLeftChild(), left, segMid);
        Integer rightMax = rangeMaxValue(node.getRightChild(), segMid + 1, right);
        if (isNull(leftMax)) {
            return isNull(rightMax) ? Integer.MIN_VALUE : rightMax;
        } else {
            return isNull(rightMax) ? leftMax : Math.max(leftMax, rightMax);
        }
    }

    /**
     * 区间更新，将区间内的所有数设置为新值 TODO buggy!
     *
     * @param left     区间下界（包含）
     * @param right    区间上界（包含）
     * @param newValue 新值
     */
    public void rangeUpdate(int left, int right, int newValue) {
        if (isInValidInterval(left, right)) {
            throw new MyException(LEFT_GREATER_THAN_RIGHT, "Interval is valid.", mapOf("left", left, "right", right));
        }

        rangeUpdate(root, left, right, newValue);
    }

    private void rangeUpdate(Node node, int left, int right, int newValue) {
        if (isNull(node) || node.right < left || node.left > right) {
            return;
        }
        if (node.left >= left && node.right <= right) {
            node.setValue(newValue);
            node.setMaxValue(newValue);
            node.setSum(newValue * (node.right - node.left + 1));
            return;
        }

        rangeUpdate(node.getLeftChild(), left, right, newValue);
        rangeUpdate(node.getRightChild(), left, right, newValue);
        node.setMaxValue(Math.max(node.getLeftChild().getMaxValue(), node.getRightChild().getMaxValue()));
        node.setSum(node.getLeftChild().getSum() + node.getRightChild().getSum());
    }

    /**
     * 单点修改 TODO buggy!
     *
     * @param idx      索引
     * @param newValue 新值
     */
    public void update(int idx, int newValue) {
        if (idx < 0 || idx >= size) {
            throw new IllegalArgumentException("Invalid index: " + idx);
        }
        update(root, idx, newValue);
    }

    private void update(Node node, int idx, int newValue) {
        if (isNull(node) || node.right < idx || node.left > idx) {
            return;
        }
        if (node.left == idx && node.right == idx) {
            node.setValue(newValue);
            node.setMaxValue(newValue);
            node.setSum(newValue);
            return;
        }
        update(node.getLeftChild(), idx, newValue);
        update(node.getRightChild(), idx, newValue);
        node.setSum(node.getLeftChild().getSum() + node.getRightChild().getSum());
        node.setMaxValue(Math.max(node.getLeftChild().getMaxValue(), node.getRightChild().getMaxValue()));
    }

    /**
     * 区间整体加上一个数
     *
     * @param left  区间左边界（包含）
     * @param right 区间右边界（包含）
     * @param delta 要加上的数
     */
    public void rangeAdd(int left, int right, int delta) {
        if (isInValidInterval(left, right)) {
            throw new IllegalArgumentException("Invalid interval: [" + left + ", " + right + "]");
        }
        rangeAdd(root, left, right, delta);
    }

    private void rangeAdd(Node node, int left, int right, int delta) {
        if (isNull(node) || node.right < left || node.left > right) {
            return;
        }
        if (node.left >= left && node.right <= right) {
            node.setValue(node.getValue() + delta);
            node.setMaxValue(node.getMaxValue() + delta); // 注意：这里假设没有负数导致最大值变化的情况，否则需要更复杂的逻辑
            node.setSum(node.getSum() + delta * (node.right - node.left + 1));
            return;
        }
        rangeAdd(node.getLeftChild(), left, right, delta);
        rangeAdd(node.getRightChild(), left, right, delta);
        node.setSum(node.getLeftChild().getSum() + node.getRightChild().getSum());
        node.setMaxValue(Math.max(node.getLeftChild().getMaxValue(), node.getRightChild().getMaxValue()));
    }

    /**
     * 单点加上一个数
     *
     * @param idx   索引
     * @param delta 要加上的数
     */
    public void pointAdd(int idx, int delta) {
        rangeAdd(idx, idx, delta);
    }

    /**
     * 获取原数组指定索引元素的值（通过查询线段树得到）
     *
     * @param idx 索引
     * @return 指定索引处的值
     */
    public int get(int idx) {
        if (idx < 0 || idx >= size) {
            throw new IllegalArgumentException("Invalid index: " + idx);
        }
        return get(root, idx);
    }

    private int get(Node node, int idx) {
        if (isNull(node) || node.right < idx || node.left > idx) {
            throw new IllegalStateException("Index out of bounds in segment tree");
        }
        if (node.left == idx && node.right == idx) {
            return node.getValue();
        }
        if (node.leftChild.right >= idx) {
            return get(node.getLeftChild(), idx);
        } else {
            return get(node.getRightChild(), idx);
        }
    }

    private boolean isInValidInterval(int left, int right) {
        return left < 0 || right >= size || left > right;
    }

    /**
     * 线段树节点
     */
    @Data
    public static class Node {

        /**
         * 区间起始值
         */
        private int value;

        /**
         * 区间最大值
         */
        private int maxValue;

        /**
         * 区间和
         */
        private int sum;

        /**
         * 区间下界（包含）
         */
        private int left;

        /**
         * 区间上界（包含）
         */
        private int right;

        /**
         * 左孩子
         */
        private Node leftChild;

        /**
         * 右孩子
         */
        private Node rightChild;

        public Node(Integer value, Integer left, Integer right) {
            requireNonNull(value, "Node value must not be null.");
            requireNonNull(left, "Lower bound of interval must not be null.");
            requireNonNull(right, "Upper bound of interval must not be null.");

            if (left > right) {
                throw new MyException(LEFT_GREATER_THAN_RIGHT, "Interval is valid.", mapOf("left", left, "right", right));
            }

            this.value = value;
            this.left = left;
            this.right = right;
        }
    }

}
