package org.infinity.common.security.jwt;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.NonNull;
import org.infinity.common.security.IpJwtCookieUpdater;
import org.infinity.common.security.MyAuthenticationToken;
import org.infinity.core.user.model.UserPO;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;
import java.time.Instant;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/10/14
 * @className AutoRefreshJwtFilter
 * @desc 自动刷新Jwt
 */
public class AutoRefreshJwtFilter extends OncePerRequestFilter {

    private final JwtService jwtService;
    private final JwtCookieFactory jwtCookieFactory;
    private final IpJwtCookieUpdater ipJwtCookieUpdater;
    // 提前自动刷新JWT的时间阈值（单位：毫秒）
    private final int aheadAutoRefreshMilli;

    public AutoRefreshJwtFilter(JwtService jwtService,
                                JwtCookieFactory jwtCookieFactory,
                                IpJwtCookieUpdater ipJwtCookieUpdater,
                                int aheadAutoRefresh) {
        this.jwtService = jwtService;
        this.jwtCookieFactory = jwtCookieFactory;
        this.ipJwtCookieUpdater = ipJwtCookieUpdater;
        // 分钟转毫秒
        this.aheadAutoRefreshMilli = aheadAutoRefresh * 60 * 1000;
    }

    @Override
    protected void doFilterInternal(@NonNull HttpServletRequest request,
                                    @NonNull HttpServletResponse response,
                                    @NonNull FilterChain filterChain) throws ServletException, IOException {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication instanceof MyAuthenticationToken token && authentication.isAuthenticated()) {
            UserPO user = token.getUser();
            // if (user.isHumanUser()) {
            long timeLeft = token.getExpiration() - Instant.now().toEpochMilli();
            if (timeLeft > 0 && timeLeft < aheadAutoRefreshMilli) {
                Cookie cookie = jwtCookieFactory.newJwtCookie(jwtService.generateJwt(user.getId()));
                response.addCookie(ipJwtCookieUpdater.updateCookie(cookie, request));

            }
            // }
        }

        filterChain.doFilter(request, response);
    }
}
