package org.infinity.core.order;

import io.restassured.response.Response;
import org.infinity.BaseApiTest;
import org.infinity.core.order.model.dto.command.BuyTicketCommand;
import org.infinity.core.order.model.dto.response.BuyTicketResponse;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/3
 * @className OrderApi
 * @desc
 */
public class OrderApi {

    private static final String ROOT_URL = "/orders";

    public static Response buyTicketRaw(String jwt, BuyTicketCommand command) {
        return BaseApiTest.given(jwt)
                .body(command)
                .when()
                .post(ROOT_URL + "/buy");
    }

    public static BuyTicketResponse buyTicket(String jwt, BuyTicketCommand command) {
        return buyTicketRaw(jwt, command)
                .then()
                .statusCode(200)
                .extract()
                .as(BuyTicketResponse.class);
    }

}
