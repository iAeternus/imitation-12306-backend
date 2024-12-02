package org.infinity.core.common.utils;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.IService;
import org.infinity.core.common.exception.ErrorCodeEnum;
import org.infinity.core.common.exception.MyException;

import java.util.Collections;
import java.util.List;

import static java.util.Collections.emptyList;
import static org.infinity.core.common.exception.ErrorCodeEnum.NOT_FOUND;
import static org.infinity.core.common.utils.ValidationUtils.isEmpty;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/26
 * @className MyBatisPlusUtils
 * @desc
 */
public class MyBatisPlusUtils {

    /**
     * 随机查询数据，查不够抛出异常
     *
     * @param service repository
     * @param limit   查询个数
     * @return 返回随机数据
     */
    public static <T> List<T> randQuery(IService<T> service, long limit) {
        QueryWrapper<T> wrapper = new QueryWrapper<>();
        wrapper.orderByAsc("RAND()")
                .last("LIMIT " + limit);
        List<T> list = service.list(wrapper);
        if(isEmpty(list) || list.size() < limit) {
            throw new MyException(NOT_FOUND, "Entity not found.", "entity name", service.getEntityClass().getName());
        }
        return list;
    }

    /**
     * 随机查询一条数据
     *
     * @param service repository
     * @return 返回一条随机数据
     */
    public static <T> T randQueryOne(IService<T> service) {
        return randQuery(service, 1L).get(0);
    }

}
