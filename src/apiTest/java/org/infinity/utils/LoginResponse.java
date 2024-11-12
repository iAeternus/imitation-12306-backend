package org.infinity.utils;


import org.infinity.core.common.model.marker.Response;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/10/26
 * @className LoginResponse
 * @desc
 */
public class LoginResponse implements Response {

    private final String memberId;
    private final String jwt;

    public LoginResponse(String memberId, String jwt) {
        this.memberId = memberId;
        this.jwt = jwt;
    }

    public String getMemberId() {
        return memberId;
    }

    public String getJwt() {
        return jwt;
    }

}
