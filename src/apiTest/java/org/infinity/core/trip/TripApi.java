package org.infinity.core.trip;

import io.restassured.common.mapper.TypeRef;
import io.restassured.response.Response;
import org.infinity.BaseApiTest;
import org.infinity.core.common.domain.page.PageResponse;
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

    public static LateResponse late(String jwt, LateCommand command) {
        return lateRaw(jwt, command)
                .then()
                .statusCode(200)
                .extract()
                .as(LateResponse.class);
    }

    public static Response onScheduleRaw(String jwt, OnScheduleCommand command) {
        return BaseApiTest.given(jwt)
                .body(command)
                .when()
                .post(ROOT_URL + "/on-schedule");
    }

    public static OnScheduleResponse onSchedule(String jwt, OnScheduleCommand command) {
        return onScheduleRaw(jwt, command)
                .then()
                .statusCode(200)
                .extract()
                .as(OnScheduleResponse.class);
    }

    public static Response cancelRaw(String jwt, CancelCommand command) {
        return BaseApiTest.given(jwt)
                .body(command)
                .when()
                .post(ROOT_URL + "/cancel");
    }

    public static CancelResponse cancel(String jwt, CancelCommand command) {
        return cancelRaw(jwt, command)
                .then()
                .statusCode(200)
                .extract()
                .as(CancelResponse.class);
    }

    public static Response endRaw(String jwt, EndCommand command) {
        return BaseApiTest.given(jwt)
                .body(command)
                .when()
                .post(ROOT_URL + "/end");
    }

    public static EndResponse end(String jwt, EndCommand command) {
        return endRaw(jwt, command)
                .then()
                .statusCode(200)
                .extract()
                .as(EndResponse.class);
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

    public static Response searchPricesRaw(String jwt, String tripId) {
        return BaseApiTest.given(jwt)
                .when()
                .get(ROOT_URL + "/prices/{tripId}", tripId);
    }

    public static SearchPriceResponse searchPrices(String jwt, String tripId) {
        return searchPricesRaw(jwt, tripId)
                .then()
                .statusCode(200)
                .extract()
                .as(SearchPriceResponse.class);
    }

}
