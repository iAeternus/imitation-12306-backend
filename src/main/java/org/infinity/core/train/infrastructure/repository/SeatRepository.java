package org.infinity.core.train.infrastructure.repository;

import com.baomidou.mybatisplus.extension.service.IService;
import org.infinity.core.train.model.po.SeatPO;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.zip.ZipFile;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className SeatRepository
 * @desc
 */
public interface SeatRepository extends IService<SeatPO> {

    List<SeatPO> listByCarriageIds(List<String> carriageIds);

    Map<String, List<SeatPO>> listByTrainIds(Map<String, List<String>> trainCarriageIds);

    SeatPO cachedById(String id);

    List<SeatPO> fetchByIds(Collection<String> seatIds);
}
