package org.infinity.common.security;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.infinity.common.tracing.TracingService;
import org.infinity.core.common.exception.MyError;
import org.infinity.core.common.utils.MyObjectMapper;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.io.PrintWriter;

import static org.apache.commons.codec.CharEncoding.UTF_8;
import static org.infinity.core.common.exception.ErrorCodeEnum.AUTHENTICATION_FAILED;
import static org.springframework.util.MimeTypeUtils.APPLICATION_JSON_VALUE;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/10/14
 * @className MyAuthenticationEntryPoint
 * @desc
 */
@Component
@RequiredArgsConstructor
public class MyAuthenticationEntryPoint implements AuthenticationEntryPoint {
    private final MyObjectMapper objectMapper;
    private final TracingService tracingService;

    @Override
    public void commence(HttpServletRequest request, HttpServletResponse response, AuthenticationException authException) throws IOException {
        SecurityContextHolder.clearContext();
        response.setStatus(401);
        response.setContentType(APPLICATION_JSON_VALUE);
        response.setCharacterEncoding(UTF_8);
        String traceId = tracingService.currentTrackId();
        MyError myError = new MyError(AUTHENTICATION_FAILED, 401, "Authentication failed.", request.getRequestURI(), traceId, null);

        PrintWriter writer = response.getWriter();
        writer.print(objectMapper.writeValueAsString(myError.toErrorResponse()));
        writer.flush();
    }
}
