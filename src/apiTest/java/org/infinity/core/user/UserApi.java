package org.infinity.core.user;

import io.restassured.response.Response;
import org.infinity.BaseApiTest;
import org.infinity.core.user.model.dto.command.UserLoginCommand;
import org.infinity.core.user.model.dto.command.UserRegisterCommand;
import org.infinity.core.user.model.dto.response.JwtTokenResponse;
import org.infinity.core.user.model.dto.response.UserProfileResponse;
import org.infinity.core.user.model.dto.response.UserRegisterResponse;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/19
 * @className UserApi
 * @desc
 */
public class UserApi {

    private static final String URL_ROOT = "/users";

    public static Response registerRaw(UserRegisterCommand command) {
        return BaseApiTest.given()
                .body(command)
                .when()
                .post(URL_ROOT + "/registration");
    }

    public static UserRegisterResponse register(UserRegisterCommand command) {
        return registerRaw(command)
                .then()
                .statusCode(201)
                .extract()
                .as(UserRegisterResponse.class);
    }

    public static Response loginRaw(UserLoginCommand command) {
        return BaseApiTest.given()
                .body(command)
                .when()
                .post(URL_ROOT + "/login");
    }

    public static JwtTokenResponse login(UserLoginCommand command) {
        return loginRaw(command)
                .then()
                .statusCode(200)
                .extract()
                .as(JwtTokenResponse.class);
    }

    public static Response fetchMyProfileRaw(String jwt, String userId) {
        return BaseApiTest.given(jwt)
                .when()
                .get(URL_ROOT + "/me/{userId}", userId);
    }

    public static UserProfileResponse fetchMyProfile(String jwt, String userId) {
        return fetchMyProfileRaw(jwt, userId)
                .then()
                .statusCode(200)
                .extract()
                .as(UserProfileResponse.class);
    }

}
