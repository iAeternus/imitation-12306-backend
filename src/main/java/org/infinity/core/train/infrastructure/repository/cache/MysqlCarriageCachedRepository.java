package org.infinity.core.train.infrastructure.repository.cache;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.infinity.core.train.infrastructure.mapper.CarriageMapper;
import org.infinity.core.train.model.po.CarriagePO;
import org.springframework.stereotype.Repository;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className MysqlCarriageCachedRepository
 * @desc
 */
@Slf4j
@Repository
public class MysqlCarriageCachedRepository extends ServiceImpl<CarriageMapper, CarriagePO> {
}
