package org.infinity.core.trip.infrastructure.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.infinity.core.trip.model.po.TripSeatPO;

import java.util.List;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/3
 * @className TripSeatMapper
 * @desc
 */
@Mapper
public interface TripSeatMapper extends BaseMapper<TripSeatPO> {
    void insertBatch(List<TripSeatPO> tripSeats);
}
