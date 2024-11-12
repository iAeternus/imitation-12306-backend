package org.infinity.core.common.exception;

import lombok.Getter;


/**
 * @author Ricky
 * @version 1.0
 * @date 2024/9/9
 * @className ErrorCodeEnum
 * @desc 错误码
 * 400：请求验证错误，请求中资源所属关系错误等
 * 401：认证错误
 * 403：权限不够
 * 404：资源未找到
 * 409：业务异常
 * 426：套餐检查失败
 * 500：系统错误
 */
@Getter
public enum ErrorCodeEnum {
    // 400
    REQUEST_VALIDATION_FAILED(400),
    LEFT_GREATER_THAN_RIGHT(400),
    INVALID_INTERVAL(400),
    INVALID_INDEX(400),

    // 401
    AUTHENTICATION_FAILED(401),

    // 403
    ACCESS_DENIED(403),
    WRONG_USER(403),

    // 404
    TRIP_NOT_FOUND(404),
    TRIP_STATION_NOT_FOUND(404),

    // 409
    NO_SUCH_SEAT(409),
    EMPTY_COLLECTION(409),


    // 426

    // 429
    TOO_MANY_REQUEST(429),

    // 500
    SYSTEM_ERROR(500),
    ;

    private final int status;

    ErrorCodeEnum(int status) {
        this.status = status;
    }

}
