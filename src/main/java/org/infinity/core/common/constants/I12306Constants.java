package org.infinity.core.common.constants;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/5
 * @className I12306Constants
 * @desc
 */
public interface I12306Constants {

    String CHINA_TIME_ZONE = "Asia/Shanghai";
    String AUTH_COOKIE_NAME = "i12306token";

    String USER_ID_PREFIX = "USR";
    String CARRIAGE_ID_PREFIX = "CAR";
    String SEAT_ID_PREFIX = "SEAT";
    String TRAIN_ID_PREFIX = "TRA";
    String TRIP_ID_PREFIX = "TRP";
    String TRIP_STATION_ID_PREFIX = "TPS";
    String STATION_ID_PREFIX = "STT";
    String ORDER_ID_PREFIX = "ORD";
    String TRIP_SEAT_ID_PREFIX = "TST";
    String CUSTOMER_SERVICE_ID_PREFIX = "CS";
    String VERIFICATION_CODE_ID_PREFIX = "VRC";

    String ORDER_CACHE = "ORDER";
    String USER_CACHE = "USER";
    String TRIP_CACHE = "TRIP";
    String TRAIN_CACHE = "TRAIN";
    String STATION_CACHE = "STATION";
    String SEAT_CACHE = "SEAT";
    String CARRIAGE_CACHE = "CARRIAGE";
    String ORDER_DETAIL_CACHE = "ORDER_DETAIL";
    String CS_CACHE = "CS";
    String TRIP_STATION_CACHE = "TRIP_STATION";

    String AUTHORIZATION = "Authorization";
    String BEARER = "Bearer ";

    String CREATE_AT = "createAt";
    String UPDATE_AT = "updateAt";
    String DB_CREATE_AT = "create_at";
    String DB_UPDATE_AT = "update_at";

    int MAX_URL_LENGTH = 1024;
    int MAX_ENTER_LENGTH = 1024;
    int MAX_CARRIAGE_COUNT = 18;

    int DEFAULT_PAGE_NO = 1;
    int DEFAULT_PAGE_SIZE = 20;
    int DEFAULT_QUERY_TPS = 20;
    int DEFAULT_COMMAND_TPS = 10;

}
