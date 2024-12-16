package org.infinity.core.order;

import io.restassured.response.Response;
import org.infinity.BaseApiTest;
import org.infinity.core.order.model.dto.command.CreateOrderCommand;
import org.infinity.core.order.model.dto.response.CreateOrderResponse;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/3
 * @className OrderApi
 * @desc
 */
public class OrderApi {

    private static final String ROOT_URL = "/orders";

    public static Response createOrderRaw(String jwt, CreateOrderCommand command) {
        return BaseApiTest.given(jwt)
                .body(command)
                .when()
                .post(ROOT_URL + "/create");
    }

    public static CreateOrderResponse createOrder(String jwt, CreateOrderCommand command) {
        return createOrderRaw(jwt, command)
                .then()
                .statusCode(200)
                .extract()
                .as(CreateOrderResponse.class);
    }

}
