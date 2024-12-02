package org.infinity.core.station.infrastructure.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.infinity.core.station.model.po.StationPO;

import java.util.List;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/26
 * @className StationMapper
 * @desc
 */
@Mapper
public interface StationMapper extends BaseMapper<StationPO> {
    // boolean allIdsExist(@Param("stationIds") List<String> stationIds);
}
