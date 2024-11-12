package org.infinity.core.train.infrastructure.repository;

import com.baomidou.mybatisplus.extension.service.IService;
import org.infinity.core.train.model.po.TrainPO;
import org.springframework.stereotype.Repository;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className TrainRepository
 * @desc
 */
public interface TrainRepository extends IService<TrainPO> {
    TrainPO cachedById(String trainId);
}
