package org.infinity.common.security.jwt;

import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.stereotype.Component;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/10/14
 * @className JwtAuthenticationProvider
 * @desc JWT认证提供者，用于处理JWT令牌认证逻辑
 */
@Component
@RequiredArgsConstructor
public class JwtAuthenticationProvider implements AuthenticationProvider {

    private final JwtService jwtService;

    /**
     * 根据提供的认证信息（JWT令牌）进行认证
     *
     * @param authentication 包含JWT令牌的认证信息（应为JwtAuthenticationToken类型）
     * @return 如果JWT令牌有效，则返回一个封装了用户信息的Authentication对象；否则抛出AuthenticationException异常
     * @throws AuthenticationException 如果JWT令牌无效或认证失败，则抛出此异常
     */
    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        JwtAuthenticationToken jwtAuthenticationToken = (JwtAuthenticationToken) authentication;
        return jwtService.tokenFrom(jwtAuthenticationToken.getJwt());
    }

    /**
     * 判断此认证提供者是否支持处理指定类型的认证信息
     *
     * @param authentication 需要进行认证的类
     * @return 如果此认证提供者支持处理JwtAuthenticationToken类型的认证信息，则返回true；否则返回false
     */
    @Override
    public boolean supports(Class<?> authentication) {
        return JwtAuthenticationToken.class.isAssignableFrom(authentication);
    }
}
