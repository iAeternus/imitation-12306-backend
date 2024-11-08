package org.infinity.common.security.jwt;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.NonNull;
import org.apache.commons.codec.CharEncoding;
import org.infinity.common.tracing.TracingService;
import org.infinity.core.common.exception.MyError;
import org.infinity.core.common.exception.MyException;
import org.infinity.core.common.utils.MyObjectMapper;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.util.MimeTypeUtils;
import org.springframework.web.filter.OncePerRequestFilter;
import org.springframework.web.util.WebUtils;

import java.io.IOException;
import java.io.PrintWriter;

import static org.apache.commons.lang3.StringUtils.isBlank;
import static org.apache.commons.lang3.StringUtils.isNotBlank;
import static org.infinity.core.common.constants.I12306Constants.*;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/10/14
 * @className JwtAuthenticationFilter
 * @desc 处理认证
 */
public class JwtAuthenticationFilter extends OncePerRequestFilter {

    private final AuthenticationManager authenticationManager;
    private final MyObjectMapper objectMapper;
    private final TracingService tracingService;

    public JwtAuthenticationFilter(AuthenticationManager authenticationManager,
                                   MyObjectMapper objectMapper,
                                   TracingService tracingService) {
        this.authenticationManager = authenticationManager;
        this.objectMapper = objectMapper;
        this.tracingService = tracingService;
    }

    /**
     * 核心过滤方法，处理每个请求
     *
     * @param request     HttpServletRequest对象
     * @param response    HttpServletResponse对象
     * @param filterChain FilterChain对象，用于继续请求的传递
     * @throws ServletException ServletException异常
     * @throws IOException      IOException异常
     */
    @Override
    protected void doFilterInternal(@NonNull HttpServletRequest request,
                                    @NonNull HttpServletResponse response,
                                    @NonNull FilterChain filterChain) throws ServletException, IOException {
        try {
            Authentication token = convert(request);

            if (token == null) {
                filterChain.doFilter(request, response);
                return;
            }

            if (authenticationIsRequired()) {
                Authentication authenticatedToken = authenticationManager.authenticate(token);
                SecurityContextHolder.getContext().setAuthentication(authenticatedToken);
            }
        } catch (MyException ex) {
            SecurityContextHolder.clearContext();

            int status = ex.getCode().getStatus();
            if (status == 401 || status == 409) {
                response.setStatus(status);
                response.setContentType(MimeTypeUtils.APPLICATION_JSON_VALUE);
                response.setCharacterEncoding(CharEncoding.UTF_8);
                String trackId = tracingService.currentTrackId();
                MyError myError = new MyError(ex.getCode(), status, ex.getUserMessage(), request.getRequestURI(), trackId, null);

                PrintWriter writer = response.getWriter();
                writer.print(objectMapper.writeValueAsString(myError.toErrorResponse()));
                writer.flush();
                return;
            }
        } catch (Throwable t) { // 其他异常继续执行，之后的MryAuthenticationEntryPoint会捕捉到了
            SecurityContextHolder.clearContext();
        }

        filterChain.doFilter(request, response);
    }

    /**
     * 从请求中提取JWT令牌
     * 先尝试从cookie中提取，如果没有或者无效，再尝试从Authorization头中提取
     *
     * @param request HttpServletRequest对象
     * @return 提取的Authentication对象，如果未找到令牌则返回null
     */
    private Authentication convert(HttpServletRequest request) {
        // 先提取cookie中的jwt，如果有，无论是否合法均不再检查authorization头
        Cookie tokenCookie = WebUtils.getCookie(request, AUTH_COOKIE_NAME);
        if (tokenCookie != null && isNotBlank(tokenCookie.getValue())) {
            return new JwtAuthenticationToken(tokenCookie.getValue());
        }

        // 如果没有提供cookie，再尝试检查authorization头
        String bearerToken = extractBearerToken(request);
        if (isNotBlank(bearerToken)) {
            return new JwtAuthenticationToken(bearerToken);
        }

        return null;
    }

    /**
     * 从Authorization头中提取Bearer令牌
     *
     * @param request HttpServletRequest对象
     * @return 提取的Bearer令牌字符串，如果没有找到或格式不正确则返回null
     */
    private String extractBearerToken(HttpServletRequest request) {
        String authorizationString = request.getHeader(AUTHORIZATION);

        if (isBlank(authorizationString) || !authorizationString.startsWith(BEARER)) {
            return null;
        }

        return authorizationString.substring(BEARER.length());
    }

    /**
     * 检查是否需要认证
     * 如果当前安全上下文中的Authentication对象为null、未认证或者是匿名认证对象，则返回true
     *
     * @return 如果需要认证则返回true，否则返回false
     */
    private boolean authenticationIsRequired() {
        Authentication existingAuth = SecurityContextHolder.getContext().getAuthentication();
        if (existingAuth == null || !existingAuth.isAuthenticated()) {
            return true;
        }

        return existingAuth instanceof AnonymousAuthenticationToken;
    }
}
