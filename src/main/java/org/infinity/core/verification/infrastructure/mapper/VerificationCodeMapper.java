package org.infinity.core.verification.infrastructure.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.infinity.core.verification.model.po.VerificationCodePO;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/23
 * @className VerificationCodeMapper
 * @desc
 */
@Mapper
public interface VerificationCodeMapper extends BaseMapper<VerificationCodePO> {
}
