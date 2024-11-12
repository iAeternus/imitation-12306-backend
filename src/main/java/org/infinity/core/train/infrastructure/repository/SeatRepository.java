package org.infinity.core.train.infrastructure.repository;

import com.baomidou.mybatisplus.extension.service.IService;
import org.infinity.core.train.model.po.SeatPO;

import java.util.List;
import java.util.stream.Stream;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className SeatRepository
 * @desc
 */
public interface SeatRepository extends IService<SeatPO> {

    List<SeatPO> listByCarIds(List<String> carIds);
}
