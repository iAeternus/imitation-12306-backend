package org.infinity.core.train.infrastructure.repository.cache;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.infinity.core.train.infrastructure.mapper.TripSeatMapper;
import org.infinity.core.train.model.po.TripSeatPO;
import org.springframework.stereotype.Repository;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/3
 * @className MysqlTripSeatCachedRepository
 * @desc
 */
@Slf4j
@Repository
public class MysqlTripSeatCachedRepository extends ServiceImpl<TripSeatMapper, TripSeatPO> {
}
