package org.infinity.core.common.exception;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.infinity.common.tracing.TracingService;
import org.springframework.boot.web.servlet.error.ErrorAttributes;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatusCode;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.context.request.WebRequest;

import java.util.Map;

import static org.infinity.core.common.exception.ErrorCodeEnum.SYSTEM_ERROR;
import static org.springframework.boot.web.error.ErrorAttributeOptions.defaults;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/10
 * @className RestErrorController
 * @desc 全局异常处理
 */
@Slf4j
@RestController
@RequiredArgsConstructor
@Tag(name = "全局异常处理器")
public class RestErrorController implements ErrorController {

    private static final String ERROR_PATH = "/error";

    private final ErrorAttributes errorAttributes;
    private final TracingService tracingService;

    @Operation(summary = "全局异常处理")
    @RequestMapping(value = ERROR_PATH)
    public ResponseEntity<?> handleError(WebRequest webRequest) {
        Map<String, Object> errorAttributes = getErrorAttributes(webRequest);
        String error = (String) errorAttributes.get("error");
        int status = (int) errorAttributes.get("status");
        String message = (String) errorAttributes.get("message");
        String path = (String) errorAttributes.get("path");
        String traceId = tracingService.currentTraceId();

        log.error("Error access[{}]:{}.", path, message);
        MyError errorDetail = new MyError(SYSTEM_ERROR, status, error, path, traceId, null);

        return new ResponseEntity<>(errorDetail.toErrorResponse(), new HttpHeaders(), HttpStatusCode.valueOf(status));
    }

    private Map<String, Object> getErrorAttributes(WebRequest webRequest) {
        return errorAttributes.getErrorAttributes(webRequest, defaults());
    }

}
