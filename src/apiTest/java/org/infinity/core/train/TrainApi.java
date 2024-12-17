package org.infinity.core.train;

import io.restassured.response.Response;
import org.infinity.BaseApiTest;
import org.infinity.core.train.model.dto.command.EnterCarriageCommand;
import org.infinity.core.train.model.dto.command.EnterTrainBatchCommand;
import org.infinity.core.train.model.dto.response.EnterCarriageResponse;
import org.infinity.core.train.model.dto.response.EnterTrainBatchResponse;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/11
 * @className TrainApi
 * @desc
 */
public class TrainApi {

    private static final String ROOT_URL = "/trains";

    public static Response enterTrainBatchRaw(String jwt, EnterTrainBatchCommand command) {
        return BaseApiTest.given(jwt)
                .body(command)
                .when()
                .post(ROOT_URL + "/enter/train");
    }

    public static EnterTrainBatchResponse enterTrainBatch(String jwt, EnterTrainBatchCommand command) {
        return enterTrainBatchRaw(jwt, command)
                .then()
                .statusCode(201)
                .extract()
                .as(EnterTrainBatchResponse.class);
    }

    public static Response enterCarriagesRaw(String jwt, EnterCarriageCommand command) {
        return BaseApiTest.given(jwt)
                .body(command)
                .when()
                .post(ROOT_URL + "/enter/carriage");
    }

    public static EnterCarriageResponse enterCarriages(String jwt, EnterCarriageCommand command) {
        return enterCarriagesRaw(jwt, command)
                .then()
                .statusCode(201)
                .extract()
                .as(EnterCarriageResponse.class);
    }

}
