package org.infinity.core.user.infrastructure.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.infinity.core.user.model.po.UserPO;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/8
 * @className UserMapper
 * @desc
 */
@Mapper
public interface UserMapper extends BaseMapper<UserPO> {
}
