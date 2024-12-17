package org.infinity.core.train.infrastructure.repository;

import com.baomidou.mybatisplus.extension.service.IService;
import org.infinity.core.train.model.po.CarriagePO;
import org.infinity.core.trip.model.po.TripSeatPO;

import java.util.List;
import java.util.Map;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className CarriageRepository
 * @desc
 */
public interface CarriageRepository extends IService<CarriagePO> {
    List<CarriagePO> listByTrainId(String trainId);

    Map<String, List<CarriagePO>> listByTrainIds(List<String> trainIds);

    CarriagePO cachedById(String id);

    Map<CarriagePO, List<TripSeatPO>> getLevelByCarriageSeats(Map<String, List<TripSeatPO>> carriageIdSeats);
}
