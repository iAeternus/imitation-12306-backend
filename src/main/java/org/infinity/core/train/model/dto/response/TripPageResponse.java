package org.infinity.core.train.model.dto.response;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;
import org.infinity.core.common.model.marker.Response;
import org.infinity.core.train.model.TripStatusEnum;

import java.time.LocalDateTime;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/26
 * @className TripPageResponse
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class TripPageResponse implements Response {

    String trainId;
    String originStationId;
    LocalDateTime startAt;
    String terminalStationId;
    LocalDateTime endAt;
    TripStatusEnum status;
    LocalDateTime createAt;
    LocalDateTime updateAt;

}
