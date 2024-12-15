package org.infinity.common.security;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.apache.commons.codec.CharEncoding;
import org.infinity.common.tracing.TracingService;
import org.infinity.core.common.exception.MyError;
import org.infinity.core.common.utils.MyObjectMapper;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.stereotype.Component;
import org.springframework.util.MimeTypeUtils;

import java.io.IOException;
import java.io.PrintWriter;

import static org.infinity.core.common.exception.ErrorCodeEnum.ACCESS_DENIED;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/10/14
 * @className MyAccessDeniedHandler
 * @desc 处理访问被拒绝的情况
 */
@Component
@RequiredArgsConstructor
public class MyAccessDeniedHandler implements AccessDeniedHandler {

    private final MyObjectMapper objectMapper;
    private final TracingService tracingService;

    @Override
    public void handle(HttpServletRequest request, HttpServletResponse response, AccessDeniedException accessDeniedException) throws IOException, ServletException {
        SecurityContextHolder.clearContext();
        response.setStatus(403);
        response.setContentType(MimeTypeUtils.APPLICATION_JSON_VALUE);
        response.setCharacterEncoding(CharEncoding.UTF_8);

        String traceId = tracingService.currentTraceId();
        MyError myError = new MyError(ACCESS_DENIED, 403, "Access denied.", request.getRequestURI(), traceId, null);
        PrintWriter writer = response.getWriter();
        writer.print(objectMapper.writeValueAsString(myError.toErrorResponse()));
        writer.flush();
    }
}
