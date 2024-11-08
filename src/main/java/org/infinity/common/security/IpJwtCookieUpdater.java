package org.infinity.common.security;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import java.net.URL;

import static com.google.common.net.InetAddresses.isInetAddress;
import static org.apache.commons.lang3.StringUtils.isBlank;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/9/26
 * @className IpJwtCookieUpdater
 * @desc
 */
@Slf4j
@Component
public class IpJwtCookieUpdater {

    /**
     * 更新Cookie的域名为请求头中的Referer所指向的域
     *
     * @param cookie  要更新的Cookie对象
     * @param request HttpServletRequest对象，用于获取请求头信息
     * @return 更新后的Cookie对象，或者如果Referer为空、不合法或不符合条件，则返回原始Cookie对象
     */
    public Cookie updateCookie(Cookie cookie, HttpServletRequest request) {
        String referer = request.getHeader("referer");
        if (isBlank(referer)) {
            return cookie;
        }

        try {
            URL url = new URL(referer);
            String host = url.getHost();
            if (isInetAddress(host) || "localhost".equals(host)) {
                cookie.setDomain(host);
                return cookie;
            }
        } catch (Exception e) {
            log.error("Cannot update cookie to referer[{}].", referer);
        }
        return cookie;
    }

}
