package org.infinity.core.train.infrastructure.repository.cache;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.infinity.core.train.infrastructure.mapper.TripStationMapper;
import org.infinity.core.train.model.po.TripStationPO;
import org.springframework.stereotype.Repository;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className MysqlTripStationCachedRepository
 * @desc
 */
@Repository
public class MysqlTripStationCachedRepository extends ServiceImpl<TripStationMapper, TripStationPO> {
}
