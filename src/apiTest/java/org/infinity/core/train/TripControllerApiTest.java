package org.infinity.core.train;

import com.google.common.collect.ImmutableList;
import org.infinity.BaseApiTest;
import org.infinity.core.common.model.page.PageResponse;
import org.infinity.core.train.model.dto.command.EnterTripBatchCommand;
import org.infinity.core.train.model.dto.query.TripPageQuery;
import org.infinity.core.train.model.dto.response.EnterTripBatchResponse;
import org.infinity.core.train.model.dto.response.TripPageResponse;
import org.infinity.core.train.model.po.TripPO;
import org.infinity.core.user.model.dto.response.JwtTokenResponse;
import org.junit.jupiter.api.Test;

import java.time.LocalDateTime;
import java.util.List;

import static com.google.common.collect.ImmutableList.toImmutableList;
import static org.infinity.core.common.exception.ErrorCodeEnum.*;
import static org.infinity.core.common.utils.MyBatisPlusUtils.randQueryOne;
import static org.infinity.core.station.model.po.StationPO.newStationId;
import static org.infinity.core.train.model.po.TrainPO.newTrainId;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/26
 * @className TripControllerApiTest
 * @desc
 */
public class TripControllerApiTest extends BaseApiTest {

    @Test
    public void should_enter_trip_batch() {
        // Given
        JwtTokenResponse operator = setupApi.registerWithLogin();
        EnterTripBatchCommand.TripInfo tripInfo = rTripInfo();
        EnterTripBatchCommand command = EnterTripBatchCommand.builder()
                .tripInfos(List.of(rTripInfo(), rTripInfo(), tripInfo))
                .build();

        // When
        EnterTripBatchResponse response = TripApi.enterTripBatch(operator.getToken(), command);

        // Then
        assertEquals(3, response.getTripIds().size());

        TripPO trip = tripRepository.cachedById(response.getTripIds().get(2));
        assertEquals(tripInfo.getTrainId(), trip.getTrainId());
        assertEquals(tripInfo.getOriginStationId(), trip.getOriginStationId());
        assertEquals(tripInfo.getTerminalStationId(), trip.getTerminalStationId());
    }

    @Test
    public void should_fail_to_enter_if_train_not_exists() {
        // Given
        JwtTokenResponse operator = setupApi.registerWithLogin();
        EnterTripBatchCommand command = EnterTripBatchCommand.builder()
                .tripInfos(List.of(rTripInfo(newTrainId()))) // not exists
                .build();

        // When & Then
        assertError(() -> TripApi.enterTripBatchRaw(operator.getToken(), command), TRAIN_IDS_NOT_ALL_EXISTS);
    }

    @Test
    public void should_fail_to_enter_if_station_not_exists() {
        // Given
        JwtTokenResponse operator = setupApi.registerWithLogin();
        EnterTripBatchCommand command = EnterTripBatchCommand.builder()
                .tripInfos(List.of(rTripInfo(newStationId(), randQueryOne(stationRepository).getId())))
                .build();

        // When & Then
        assertError(() -> TripApi.enterTripBatchRaw(operator.getToken(), command), STATION_IDS_NOT_ALL_EXISTS);

        // Given
        EnterTripBatchCommand command2 = EnterTripBatchCommand.builder()
                .tripInfos(List.of(rTripInfo(randQueryOne(stationRepository).getId(), newStationId())))
                .build();

        // When & Then
        assertError(() -> TripApi.enterTripBatchRaw(operator.getToken(), command2), STATION_IDS_NOT_ALL_EXISTS);
    }

    @Test
    public void should_fail_to_enter_if_time_invalid() {
        // Given
        JwtTokenResponse operator = setupApi.registerWithLogin();
        EnterTripBatchCommand command = EnterTripBatchCommand.builder()
                .tripInfos(List.of(EnterTripBatchCommand.TripInfo.builder()
                        .trainId(randQueryOne(trainRepository).getId())
                        .originStationId(randQueryOne(stationRepository).getId())
                        .startAt(LocalDateTime.now())
                        .terminalStationId(randQueryOne(stationRepository).getId())
                        .endAt(LocalDateTime.now().minusHours(5))
                        .build()))
                .build();

        // When & Then
        assertError(() -> TripApi.enterTripBatchRaw(operator.getToken(), command), INVALID_TIME_DURATION);
    }

    @Test
    public void should_page_trips() {
        // Given
        JwtTokenResponse operator = setupApi.registerWithLogin();

        EnterTripBatchCommand command = EnterTripBatchCommand.builder()
                .tripInfos(List.of(rTripInfo()))
                .build();
        EnterTripBatchResponse response = TripApi.enterTripBatch(operator.getToken(), command);
        TripPO trip = tripRepository.cachedById(response.getTripIds().get(0));

        TripPageQuery pageQuery = TripPageQuery.builder()
                .trainId(trip.getTrainId())
                .pageNo(1)
                .pageSize(3)
                .build();

        // When
        PageResponse<TripPageResponse> pageResponse = TripApi.pages(operator.getToken(), pageQuery);

        // Then
        List<String> tripIds = pageResponse.getRecords().stream().map(TripPageResponse::getTripId).collect(toImmutableList());

        assertTrue(tripIds.contains(trip.getId()));
    }

    private EnterTripBatchCommand.TripInfo rTripInfo(String trainId, String originStationId, String terminalStationId) {
        LocalDateTime now = LocalDateTime.now();
        return EnterTripBatchCommand.TripInfo.builder()
                .trainId(trainId)
                .originStationId(originStationId)
                .startAt(now)
                .terminalStationId(terminalStationId)
                .endAt(now.plusHours(5))
                .build();
    }

    private EnterTripBatchCommand.TripInfo rTripInfo() {
        return rTripInfo(randQueryOne(trainRepository).getId(), randQueryOne(stationRepository).getId(), randQueryOne(stationRepository).getId());
    }

    private EnterTripBatchCommand.TripInfo rTripInfo(String trainId) {
        return rTripInfo(trainId, randQueryOne(stationRepository).getId(), randQueryOne(stationRepository).getId());
    }

    private EnterTripBatchCommand.TripInfo rTripInfo(String originStationId, String terminalStationId) {
        return rTripInfo(randQueryOne(trainRepository).getId(), originStationId, terminalStationId);
    }

}
