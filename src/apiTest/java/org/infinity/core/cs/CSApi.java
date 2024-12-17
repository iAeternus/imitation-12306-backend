package org.infinity.core.cs;

import io.restassured.response.Response;
import org.infinity.BaseApiTest;
import org.infinity.core.cs.model.dto.command.EnterCSBatchCommand;
import org.infinity.core.cs.model.dto.response.ByIdResponse;
import org.infinity.core.cs.model.dto.response.EnterCSBatchResponse;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/17
 * @className CSApi
 * @desc
 */
public class CSApi {

    private static final String ROOT_URL = "/cs";

    public static Response enterCSBatchRaw(String jwt, EnterCSBatchCommand command) {
        return BaseApiTest.given(jwt)
                .body(command)
                .when()
                .post(ROOT_URL + "/enter-batch");
    }

    public static EnterCSBatchResponse enterCSBatch(String jwt, EnterCSBatchCommand command) {
        return enterCSBatchRaw(jwt, command)
                .then()
                .statusCode(200)
                .extract()
                .as(EnterCSBatchResponse.class);
    }

    public static Response byIdRaw(String jwt, String csId) {
        return BaseApiTest.given(jwt)
                .when()
                .get(ROOT_URL + "/{csId}", csId);
    }

    public static ByIdResponse byId(String jwt, String csId) {
        return byIdRaw(jwt, csId)
                .then()
                .statusCode(200)
                .extract()
                .as(ByIdResponse.class);
    }

}
