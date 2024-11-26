package org.infinity.core.common.model.page;

import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.AccessLevel;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;
import org.infinity.core.common.model.marker.Query;

import static org.infinity.core.common.constants.I12306Constants.DEFAULT_PAGE_NO;
import static org.infinity.core.common.constants.I12306Constants.DEFAULT_PAGE_SIZE;

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
    private Integer pageNo = DEFAULT_PAGE_NO;

    /**
     * 每页记录数
     */
    @Min(1)
    private Integer pageSize = DEFAULT_PAGE_SIZE;

    /**
     * 排序字段
     */
    @NotBlank
    private String sortBy;

    /**
     * 是否升序
     */
    @NotNull
    private Boolean isAsc = true;

}
