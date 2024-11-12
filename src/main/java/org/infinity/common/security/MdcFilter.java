package org.infinity.common.security;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.NonNull;
import org.infinity.core.user.model.po.UserPO;
import org.slf4j.MDC;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/10/14
 * @className MdcFilter
 * @desc 这是一个用于设置和清理MDC（Mapped Diagnostic Context）上下文信息的过滤器，它主要用于在日志记录中传递用户相关的追踪信息
 */
public class MdcFilter extends OncePerRequestFilter {

    public static final String USER_ID = "uid";

    @Override
    protected void doFilterInternal(@NonNull HttpServletRequest request,
                                    @NonNull HttpServletResponse response,
                                    @NonNull FilterChain filterChain) throws ServletException, IOException {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication instanceof MyAuthenticationToken token) {
            UserPO user = token.getUser();
            MDC.put(USER_ID, user.getId());
        }
        filterChain.doFilter(request, response);
        MDC.clear();
    }

}
