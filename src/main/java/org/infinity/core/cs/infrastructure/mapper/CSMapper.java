package org.infinity.core.cs.infrastructure.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.infinity.core.cs.model.po.CustomerServicePO;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/17
 * @className CSMapper
 * @desc
 */
@Mapper
public interface CSMapper extends BaseMapper<CustomerServicePO> {
}
