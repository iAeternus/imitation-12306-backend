package org.infinity.core.trip;

import io.restassured.common.mapper.TypeRef;
import io.restassured.response.Response;
import org.infinity.BaseApiTest;
import org.infinity.core.common.model.page.PageResponse;
import org.infinity.core.trip.model.dto.command.*;
import org.infinity.core.trip.model.dto.query.TripPageQuery;
import org.infinity.core.trip.model.dto.response.*;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/26
 * @className TripApi
 * @desc
 */
public class TripApi {

    private static final String ROOT_URL = "/trips";

    public static Response enterTripBatchRaw(String jwt, EnterTripBatchCommand command) {
        return BaseApiTest.given(jwt)
                .body(command)
                .when()
                .post(ROOT_URL + "/enter-batch");
    }

    public static EnterTripBatchResponse enterTripBatch(String jwt, EnterTripBatchCommand command) {
        return enterTripBatchRaw(jwt, command)
                .then()
                .statusCode(201)
                .extract()
                .as(EnterTripBatchResponse.class);
    }

    public static Response enterTripStationsRaw(String jwt, EnterTripStationsCommand command) {
        return BaseApiTest.given(jwt)
                .body(command)
                .when()
                .post(ROOT_URL + "/enter-trip-stations");
    }

    public static EnterTripStationsResponse enterTripStations(String jwt, EnterTripStationsCommand command) {
        return enterTripStationsRaw(jwt, command)
                .then()
                .statusCode(201)
                .extract()
                .as(EnterTripStationsResponse.class);
    }

    public static Response lateRaw(String jwt, LateCommand command) {
        return BaseApiTest.given(jwt)
                .body(command)
                .when()
                .post(ROOT_URL + "/late");
    }

    public static void late(String jwt, LateCommand command) {
        lateRaw(jwt, command)
                .then()
                .statusCode(200);
    }

    public static Response onScheduleRaw(String jwt, OnScheduleCommand command) {
        return BaseApiTest.given(jwt)
                .body(command)
                .when()
                .post(ROOT_URL + "/on-schedule");
    }

    public static void onSchedule(String jwt, OnScheduleCommand command) {
        onScheduleRaw(jwt, command)
                .then()
                .statusCode(200);
    }

    public static Response cancelRaw(String jwt, CancelCommand command) {
        return BaseApiTest.given(jwt)
                .body(command)
                .when()
                .post(ROOT_URL + "/cancel");
    }

    public static void cancel(String jwt, CancelCommand command) {
        cancelRaw(jwt, command)
                .then()
                .statusCode(200);
    }

    public static Response endRaw(String jwt, EndCommand command) {
        return BaseApiTest.given(jwt)
                .body(command)
                .when()
                .post(ROOT_URL + "/end");
    }

    public static void end(String jwt, EndCommand command) {
        endRaw(jwt, command)
                .then()
                .statusCode(200);
    }

    public static Response pagesRaw(String jwt, TripPageQuery pageQuery) {
        return BaseApiTest.given(jwt)
                .body(pageQuery)
                .when()
                .post(ROOT_URL + "/pages");
    }

    public static PageResponse<TripResponse> pages(String jwt, TripPageQuery pageQuery) {
        return pagesRaw(jwt, pageQuery)
                .then()
                .statusCode(200)
                .extract()
                .as(new TypeRef<>() {
                });
    }

    public static Response byIdRaw(String jwt, String tripId) {
        return BaseApiTest.given(jwt)
                .when()
                .get(ROOT_URL + "/{tripId}", tripId);
    }

    public static TripResponse byId(String jwt, String tripId) {
        return byIdRaw(jwt, tripId)
                .then()
                .statusCode(200)
                .extract()
                .as(TripResponse.class);
    }

}
