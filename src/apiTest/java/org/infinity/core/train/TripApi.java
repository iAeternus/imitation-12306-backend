package org.infinity.core.train;

import io.restassured.common.mapper.TypeRef;
import io.restassured.response.Response;
import org.infinity.BaseApiTest;
import org.infinity.core.common.model.page.PageResponse;
import org.infinity.core.train.model.dto.command.EnterTripBatchCommand;
import org.infinity.core.train.model.dto.query.TripPageQuery;
import org.infinity.core.train.model.dto.response.EnterTripBatchResponse;
import org.infinity.core.train.model.dto.response.TripResponse;

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
