package org.infinity.core.trip.model.dto.query;

import lombok.AccessLevel;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;
import org.infinity.core.common.model.page.PageQuery;
import org.infinity.core.common.validation.id.station.StationId;
import org.infinity.core.common.validation.id.train.TrainId;
import org.infinity.core.trip.model.TripStatusEnum;

import java.time.LocalDateTime;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/26
 * @className TripPageQuery
 * @desc
 */
@Getter
@SuperBuilder
@EqualsAndHashCode(callSuper = true)
@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class TripPageQuery extends PageQuery {

    @TrainId
    private String trainId;

    @StationId
    private String originStationId;

    @StationId
    private String terminalStationId;

    private LocalDateTime startAt;
    private LocalDateTime endAt;
    private TripStatusEnum status;

}
