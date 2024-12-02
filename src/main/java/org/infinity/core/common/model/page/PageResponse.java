package org.infinity.core.common.model.page;

import com.google.common.collect.ImmutableList;
import lombok.*;
import lombok.experimental.SuperBuilder;
import org.infinity.core.common.model.marker.Response;

import java.util.Collections;
import java.util.List;

import static java.util.Collections.emptyList;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/5/27
 * @className PageResponse
 * @desc 分页查询结果
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PUBLIC)
public class PageResponse<T> implements Response {

    /**
     * 总条数
     */
    Long total;

    /**
     * 总页数
     */
    Long pages;

    /**
     * 当前页数据集合
     */
    List<T> records;

    public static <T> PageResponse<T> emptyPageResponse() {
        return PageResponse.<T>builder()
                .total(0L)
                .pages(0L)
                .records(emptyList())
                .build();
    }

}
