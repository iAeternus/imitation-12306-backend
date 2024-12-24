package org.infinity.core.verification;

import io.restassured.response.Response;
import org.infinity.BaseApiTest;
import org.infinity.core.common.domain.ReturnId;
import org.infinity.core.verification.model.dto.command.CreateChangeMobileVerificationCodeCommand;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/24
 * @className VerificationCodeApi
 * @desc
 */
public class VerificationCodeApi {

    public static Response createVerificationCodeForChangeMobileRaw(CreateChangeMobileVerificationCodeCommand command) {
        return BaseApiTest.given()
                .body(command)
                .when()
                .post("/verifications/for-change-mobile");
    }

    public static String createVerificationCodeForChangeMobile(CreateChangeMobileVerificationCodeCommand command) {
        return createVerificationCodeForChangeMobileRaw(command)
                .then()
                .statusCode(201)
                .extract()
                .as(ReturnId.class)
                .toString();
    }

}
