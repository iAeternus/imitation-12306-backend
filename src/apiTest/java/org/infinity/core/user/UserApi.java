package org.infinity.core.user;

import io.restassured.response.Response;
import org.infinity.BaseApiTest;
import org.infinity.core.user.model.dto.command.*;
import org.infinity.core.user.model.dto.response.*;

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

    public static Response logoutRaw(LogoutCommand command) {
        return BaseApiTest.given()
                .body(command)
                .when()
                .delete(URL_ROOT + "/logout");
    }

    public static LogoutResponse logout(LogoutCommand command) {
        return logoutRaw(command)
                .then()
                .statusCode(200)
                .extract()
                .as(LogoutResponse.class);
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

    public static Response stuVerifyRaw(String jwt, StuVerifyCommand command) {
        return BaseApiTest.given(jwt)
                .body(command)
                .when()
                .put(URL_ROOT + "/stu");
    }

    public static void stuVerify(String jwt, StuVerifyCommand command) {
        stuVerifyRaw(jwt, command)
                .then()
                .statusCode(200);
    }

    public static Response realNameVerifyRaw(String jwt, RealNameVerifyCommand command) {
        return BaseApiTest.given(jwt)
                .body(command)
                .when()
                .put(URL_ROOT + "/real-name");
    }

    public static void realNameVerify(String jwt, RealNameVerifyCommand command) {
        realNameVerifyRaw(jwt, command)
                .then()
                .statusCode(200);
    }

    public static Response changeMobileRaw(String jwt, ChangeMobileCommand command) {
        return BaseApiTest.given(jwt)
                .body(command)
                .when()
                .put(URL_ROOT + "/change/mobile");
    }

    public static ChangeMobileResponse changeMobile(String jwt, ChangeMobileCommand command) {
        return changeMobileRaw(jwt, command)
                .then()
                .statusCode(200)
                .extract()
                .as(ChangeMobileResponse.class);
    }

}
