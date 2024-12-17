package org.infinity.core.trip.infrastructure.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.infinity.core.trip.model.po.TripPO;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className TripMapper
 * @desc
 */
@Mapper
public interface TripMapper extends BaseMapper<TripPO> {
}
