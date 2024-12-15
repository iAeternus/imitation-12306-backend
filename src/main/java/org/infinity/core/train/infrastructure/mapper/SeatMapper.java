package org.infinity.core.train.infrastructure.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.infinity.core.train.model.po.SeatPO;

import java.util.List;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className SeatMapper
 * @desc
 */
@Mapper
public interface SeatMapper extends BaseMapper<SeatPO> {

    List<SeatPO> listAllByCarriageId(List<String> carriageIds);

}
