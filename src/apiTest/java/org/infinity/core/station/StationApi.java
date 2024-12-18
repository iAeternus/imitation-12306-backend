package org.infinity.core.station;

import io.restassured.response.Response;
import org.infinity.BaseApiTest;
import org.infinity.core.station.model.dto.response.ListAllResponse;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/18
 * @className StationApi
 * @desc
 */
public class StationApi {

    private static final String ROOT_URL = "/stations";

    public static Response listAllRaw(String jwt) {
        return BaseApiTest.given(jwt)
                .when()
                .get(ROOT_URL);
    }

    public static ListAllResponse listAll(String jwt) {
        return listAllRaw(jwt)
                .then()
                .statusCode(200)
                .extract()
                .as(ListAllResponse.class);
    }

}
