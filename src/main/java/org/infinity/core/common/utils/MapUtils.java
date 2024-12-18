package org.infinity.core.common.utils;

import java.util.HashMap;
import java.util.Map;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/9/9
 * @className MapUtils
 * @desc Map工具类
 */
public class MapUtils {

    private MapUtils() {
    }

    public static <K, V> Map<K, V> mapOf(K key, V value) {
        HashMap<K, V> map = new HashMap<>(2, 0.9f);
        map.put(key, value);
        return map;
    }

    public static <K, V> Map<K, V> mapOf(K key1, V value1,
                                         K key2, V value2) {
        HashMap<K, V> map = new HashMap<>(3, 0.9f);
        map.put(key1, value1);
        map.put(key2, value2);
        return map;
    }

    public static <K, V> Map<K, V> mapOf(K key1, V value1,
                                         K key2, V value2,
                                         K key3, V value3) {
        HashMap<K, V> map = new HashMap<>(4, 0.9f);
        map.put(key1, value1);
        map.put(key2, value2);
        map.put(key3, value3);
        return map;
    }

    public static <K, V> Map<K, V> mapOf(K key1, V value1,
                                         K key2, V value2,
                                         K key3, V value3,
                                         K key4, V value4) {
        HashMap<K, V> map = new HashMap<>(5, 0.9f);
        map.put(key1, value1);
        map.put(key2, value2);
        map.put(key3, value3);
        map.put(key4, value4);
        return map;
    }

    public static boolean isEmpty(Map<?, ?> map) {
        return org.apache.commons.collections4.MapUtils.isEmpty(map);
    }

    public static boolean isNotEmpty(Map<?, ?> map) {
        return org.apache.commons.collections4.MapUtils.isNotEmpty(map);
    }

}
