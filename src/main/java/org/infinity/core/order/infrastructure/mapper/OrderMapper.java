package org.infinity.core.order.infrastructure.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.infinity.core.order.model.po.OrderPO;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/4
 * @className OrderMapper
 * @desc
 */
@Mapper
public interface OrderMapper extends BaseMapper<OrderPO> {
}
