package org.infinity.core.common.model.page;

import com.baomidou.mybatisplus.core.metadata.OrderItem;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.infinity.core.common.model.marker.Response;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.function.Function;

import static com.google.common.collect.ImmutableList.toImmutableList;
import static org.infinity.core.common.constants.I12306Constants.*;
import static org.infinity.core.common.utils.ValidationUtils.isEmpty;
import static org.infinity.core.common.utils.ValidationUtils.isNotBlank;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/5/27
 * @className PageFactory
 * @desc mybatis-plus分页工厂
 */
public class PageFactory {

    /**
     * 根据查询完毕的Page对象构建分页结果
     *
     * @param page      mp 分页对象
     * @param convertor 对象转换的逻辑
     * @return 返回分页结果
     */
    public static  <PO, RES extends Response> PageResponse<RES> toPageResponse(Page<PO> page, Function<PO, RES> convertor) {
        List<PO> records = page.getRecords();
        if (isEmpty(records)) {
            return PageResponse.emptyPageResponse();
        }
        return PageResponse.<RES>builder()
                .total(page.getTotal())
                .pages(page.getPages())
                .records(records.stream().map(convertor).collect(toImmutableList()))
                .build();
    }

    /**
     * 构建分页和排序条件
     *
     * @param query 查询条件，可以是PageQuery的派生类
     * @param items 排序条件
     * @return 返回封装好的mp的Page对象
     */
    public static <T> Page<T> toPage(PageQuery query, OrderItem... items) {
        // 构建分页条件
        Page<T> page = Page.of(query.getPageNo(), query.getPageSize());

        // 排序条件
        if (isNotBlank(query.getSortBy())) {
            // 不为空
            OrderItem orderItem = new OrderItem();
            orderItem.setColumn(query.getSortBy());
            orderItem.setAsc(query.getIsAsc());
            page.addOrder(orderItem);
        } else if (items != null) {
            // 为空，默认排序
            page.addOrder(items);
        }
        return page;
    }

    /**
     * 构建分页和排序条件-单排序条件
     */
    public static <T> Page<T> toPage(PageQuery query, String defaultSortBy, Boolean defaultAsc) {
        OrderItem orderItem = new OrderItem();
        orderItem.setColumn(defaultSortBy);
        orderItem.setAsc(defaultAsc);
        return toPage(query, orderItem);
    }

    /**
     * 构建分页和排序条件-默认按创建时间降序排列
     */
    public static <T> Page<T> toPageDefaultSortByCreateTime(PageQuery query) {
        OrderItem orderItem = new OrderItem();
        orderItem.setColumn(DB_CREATE_AT);
        orderItem.setAsc(false);
        return toPage(query, orderItem);
    }

    /**
     * 构建分页和排序条件-默认按修改时间降序排列
     */
    public static <T> Page<T> toPageDefaultSortByUpdateTime(PageQuery query) {
        OrderItem orderItem = new OrderItem();
        orderItem.setColumn(DB_UPDATE_AT);
        orderItem.setAsc(false);
        return toPage(query, orderItem);
    }

}
