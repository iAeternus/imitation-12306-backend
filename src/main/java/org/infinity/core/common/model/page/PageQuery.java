package org.infinity.core.common.model.page;

import jakarta.validation.constraints.Min;
import lombok.AccessLevel;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;
import org.infinity.core.common.model.marker.Query;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/5/27
 * @className PageQuery
 * @desc 分页查询实体
 */
@Getter
@SuperBuilder
@EqualsAndHashCode
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class PageQuery implements Query {

    /**
     * 页码
     */
    @Min(0)
    private Integer pageNo;

    /**
     * 每页记录数
     */
    @Min(1)
    private Integer pageSize;

    /**
     * 排序字段
     */
    private String sortBy;

    /**
     * 是否升序
     */
    private Boolean isAsc;

}
