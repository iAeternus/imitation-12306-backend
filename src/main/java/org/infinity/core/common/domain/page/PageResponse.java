package org.infinity.core.common.domain.page;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;
import org.infinity.core.common.domain.marker.Response;

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
