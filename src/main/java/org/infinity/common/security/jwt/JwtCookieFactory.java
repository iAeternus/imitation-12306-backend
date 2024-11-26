package org.infinity.common.security.jwt;

import jakarta.servlet.http.Cookie;
import lombok.RequiredArgsConstructor;
import org.infinity.core.common.properties.CommonProperties;
import org.infinity.core.common.properties.JwtProperties;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Component;

import java.util.Arrays;

import static org.infinity.core.common.constants.I12306Constants.AUTH_COOKIE_NAME;


/**
 * @author Ricky
 * @version 1.0
 * @date 2024/9/26
 * @className JwtCookieFactory
 * @desc
 */
@Component
@RequiredArgsConstructor
public class JwtCookieFactory {

    private final Environment environment;
    private final JwtProperties jwtProperties;
    private final CommonProperties commonProperties;

    /**
     * 根据当前环境生成JWT认证Cookie<br>
     * 根据应用的环境配置（是否为生产环境），决定创建不同类型的Cookie<br>
     * 如果是生产环境，则调用newProdCookie方法创建安全的Cookie<br>
     * 否则，调用newNonProdCookie方法创建非生产环境的Cookie<br>
     *
     * @param jwt JWT令牌字符串
     * @return 根据环境配置生成的Cookie对象
     */
    public Cookie newJwtCookie(String jwt) {
        String[] activeProfiles = environment.getActiveProfiles();

        if (Arrays.asList(activeProfiles).contains("prod")) {
            return newProdCookie(jwt);
        }

        return newNonProdCookie(jwt);
    }

    /**
     * 创建非生产环境的JWT认证Cookie
     * 该Cookie包含JWT令牌，设置了过期时间、路径和域名，但不包括安全（Secure）和HttpOnly标志
     *
     * @param jwt JWT令牌字符串
     * @return 配置好的非生产环境Cookie对象
     */
    private Cookie newNonProdCookie(String jwt) {
        Cookie cookie = new Cookie(AUTH_COOKIE_NAME, jwt);
        cookie.setMaxAge(jwtProperties.getExpire() * 60);
        cookie.setPath("/");
        cookie.setDomain(commonProperties.getBaseDomainName());
        return cookie;
    }

    /**
     * 创建生产环境的JWT认证Cookie
     * 该Cookie包含JWT令牌，并设置了过期时间、路径、域名、安全（Secure）和HttpOnly标志
     *
     * @param jwt JWT令牌字符串
     * @return 配置好的生产环境Cookie对象
     */
    private Cookie newProdCookie(String jwt) {
        Cookie cookie = new Cookie(AUTH_COOKIE_NAME, jwt);
        cookie.setMaxAge(jwtProperties.getExpire() * 60);
        cookie.setDomain(commonProperties.getBaseDomainName());
        cookie.setPath("/");
        cookie.setSecure(true);
        cookie.setHttpOnly(true);
        return cookie;
    }

    /**
     * 创建用于注销的Cookie
     * 该Cookie通过设置JWT令牌为空字符串和最大年龄为0来实现注销功能，同时指定了域名和路径
     *
     * @return 注销用的Cookie对象
     */
    public Cookie logoutCookie() {
        Cookie cookie = new Cookie(AUTH_COOKIE_NAME, "");
        cookie.setMaxAge(0);
        cookie.setDomain(commonProperties.getBaseDomainName());
        cookie.setPath("/");
        return cookie;
    }

}
