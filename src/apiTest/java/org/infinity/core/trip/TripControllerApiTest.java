package org.infinity.core.trip;

import org.infinity.BaseApiTest;
import org.infinity.core.common.domain.page.PageResponse;
import org.infinity.core.trip.model.dto.command.*;
import org.infinity.core.trip.model.dto.query.TripPageQuery;
import org.infinity.core.trip.model.dto.response.*;
import org.infinity.core.trip.model.po.TripPO;
import org.infinity.core.trip.model.po.TripStationPO;
import org.infinity.core.user.model.dto.response.JwtTokenResponse;
import org.junit.jupiter.api.Test;

import java.time.LocalDateTime;
import java.util.List;

import static com.google.common.collect.ImmutableList.toImmutableList;
import static org.infinity.core.common.exception.ErrorCodeEnum.*;
import static org.infinity.core.common.utils.MyBatisPlusUtils.randQueryOne;
import static org.infinity.core.station.model.po.StationPO.newStationId;
import static org.infinity.core.train.model.po.TrainPO.newTrainId;
import static org.infinity.core.trip.model.TripStatusEnum.*;
import static org.junit.jupiter.api.Assertions.*;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/26
 * @className TripControllerApiTest
 * @desc
 */
public class TripControllerApiTest extends BaseApiTest {

    // TODO 这个测试点导致数据不一致
    // @Test
    // public void should_enter_trip_batch() {
    //     // Given
    //     JwtTokenResponse operator = setupApi.registerWithLogin();
    //     EnterTripBatchCommand.TripInfo tripInfo = rTripInfo();
    //     EnterTripBatchCommand command = EnterTripBatchCommand.builder()
    //             .tripInfos(List.of(rTripInfo(), rTripInfo(), tripInfo))
    //             .build();
    //
    //     // When
    //     EnterTripBatchResponse response = TripApi.enterTripBatch(operator.getToken(), command);
    //
    //     // Then
    //     assertEquals(3, response.getTripIds().size());
    //
    //     TripPO trip = tripRepository.cachedById(response.getTripIds().get(2));
    //     assertEquals(tripInfo.getTrainId(), trip.getTrainId());
    //     assertEquals(tripInfo.getOriginStationId(), trip.getOriginStationId());
    //     assertEquals(tripInfo.getTerminalStationId(), trip.getTerminalStationId());
    // }

    @Test
    public void should_fail_to_enter_if_train_not_exists() {
        // Given
        JwtTokenResponse operator = setupApi.registerWithLogin();
        EnterTripBatchCommand command = EnterTripBatchCommand.builder()
                .tripInfos(List.of(setupApi.rTripInfo(newTrainId()))) // not exists
                .build();

        // When & Then
        assertError(() -> TripApi.enterTripBatchRaw(operator.getToken(), command), TRAIN_IDS_NOT_ALL_EXISTS);
    }

    @Test
    public void should_fail_to_enter_if_station_not_exists() {
        // Given
        JwtTokenResponse operator = setupApi.registerWithLogin();
        EnterTripBatchCommand command = EnterTripBatchCommand.builder()
                .tripInfos(List.of(setupApi.rTripInfo(newStationId(), randQueryOne(stationRepository).getId())))
                .build();

        // When & Then
        assertError(() -> TripApi.enterTripBatchRaw(operator.getToken(), command), STATION_IDS_NOT_ALL_EXISTS);

        // Given
        EnterTripBatchCommand command2 = EnterTripBatchCommand.builder()
                .tripInfos(List.of(setupApi.rTripInfo(randQueryOne(stationRepository).getId(), newStationId())))
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
    public void should_enter_trip_stations() {
        // Given
        JwtTokenResponse operator = setupApi.registerWithLogin();

        String tripId = TripApi.enterTripBatch(operator.getToken(), EnterTripBatchCommand.builder()
                .tripInfos(List.of(setupApi.rTripInfo()))
                .build()).getTripIds().get(0);

        LocalDateTime now = LocalDateTime.now();

        EnterTripStationsCommand command = EnterTripStationsCommand.builder()
                .tripId(tripId)
                .tripStationInfos(List.of(setupApi.rTripStationInfo(now, 1), setupApi.rTripStationInfo(now.plusHours(5), 2)))
                .build();

        // When
        EnterTripStationsResponse response = TripApi.enterTripStations(operator.getToken(), command);

        // Then
        assertEquals(2, response.getTripStationIds().size());

        TripStationPO tripStation1 = tripStationRepository.getById(response.getTripStationIds().get(0));
        TripStationPO tripStation2 = tripStationRepository.getById(response.getTripStationIds().get(1));
        assertTrue(tripStation1.getOrderNum() < tripStation2.getOrderNum());
    }

    @Test
    public void should_late() {
        // Given
        JwtTokenResponse operator = setupApi.registerWithLogin();
        TripPO trip = randQueryOne(tripRepository);

        LateCommand command = LateCommand.builder()
                .tripId(trip.getId())
                .build();

        // When
        LateResponse response = TripApi.late(operator.getToken(), command);

        // Then
        TripPO newTrip = tripRepository.cachedById(command.getTripId());
        if(response.getSuccess()) {
            assertNotEquals(trip.getStatus(), newTrip.getStatus());
        }
        assertEquals(BE_LATE, newTrip.getStatus());
    }

    @Test
    public void should_on_schedule() {
        // Given
        JwtTokenResponse operator = setupApi.registerWithLogin();
        TripPO trip = randQueryOne(tripRepository);

        OnScheduleCommand command = OnScheduleCommand.builder()
                .tripId(trip.getId())
                .build();

        // When
        OnScheduleResponse response = TripApi.onSchedule(operator.getToken(), command);

        // Then
        TripPO newTrip = tripRepository.cachedById(command.getTripId());
        if(response.getSuccess()) {
            assertNotEquals(trip.getStatus(), newTrip.getStatus());
        }
        assertEquals(ON_SCHEDULE, newTrip.getStatus());
    }

    @Test
    public void should_cancel() {
        // Given
        JwtTokenResponse operator = setupApi.registerWithLogin();
        TripPO trip = randQueryOne(tripRepository);

        CancelCommand command = CancelCommand.builder()
                .tripId(trip.getId())
                .build();

        // When
        CancelResponse response = TripApi.cancel(operator.getToken(), command);

        // Then
        TripPO newTrip = tripRepository.cachedById(command.getTripId());
        if(response.getSuccess()) {
            assertNotEquals(trip.getStatus(), newTrip.getStatus());
        }
        assertEquals(CANCEL, newTrip.getStatus());
    }

    @Test
    public void should_end() {
        // Given
        JwtTokenResponse operator = setupApi.registerWithLogin();
        TripPO trip = randQueryOne(tripRepository);

        EndCommand command = EndCommand.builder()
                .tripId(trip.getId())
                .build();

        // When
        EndResponse response = TripApi.end(operator.getToken(), command);

        // Then
        TripPO newTrip = tripRepository.cachedById(command.getTripId());
        if(response.getSuccess()) {
            assertNotEquals(trip.getStatus(), newTrip.getStatus());
        }
        assertEquals(END, newTrip.getStatus());
    }

    @Test
    public void should_page_trips() {
        // Given
        JwtTokenResponse operator = setupApi.registerWithLogin();

        TripPO trip = randQueryOne(tripRepository);
        TripPageQuery pageQuery = TripPageQuery.builder()
                .trainId(trip.getTrainId())
                .pageNo(1)
                .pageSize(3)
                .build();

        // When
        PageResponse<TripResponse> pageResponse = TripApi.pages(operator.getToken(), pageQuery);

        // Then
        List<String> tripIds = pageResponse.getRecords().stream().map(TripResponse::getTripId).collect(toImmutableList());

        assertTrue(tripIds.contains(trip.getId()));
    }

    @Test
    public void should_get_by_id() {
        // Given
        JwtTokenResponse operator = setupApi.registerWithLogin();

        TripPO trip = randQueryOne(tripRepository);

        // When
        TripResponse tripResponse = TripApi.byId(operator.getToken(), trip.getId());

        // Given
        assertEquals(trip.getId(), tripResponse.getTripId());
    }

    @Test
    public void should_search_prices() {
        // Given
        JwtTokenResponse operator = setupApi.registerWithLogin();
        TripPO trip = randQueryOne(tripRepository);

        // When
        SearchPriceResponse response = TripApi.searchPrices(operator.getToken(), trip.getId());

        // Then
        assertEquals(2, response.getPrices().size());
    }

}
