package org.infinity.common.security.jwt;

import lombok.RequiredArgsConstructor;
import org.infinity.common.security.IpJwtCookieUpdater;
import org.infinity.common.security.MdcFilter;
import org.infinity.common.tracing.TracingService;
import org.infinity.core.common.properties.JwtProperties;
import org.infinity.core.common.utils.MyObjectMapper;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.ProviderManager;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityCustomizer;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.security.web.access.ExceptionTranslationFilter;
import org.springframework.security.web.access.intercept.AuthorizationFilter;
import org.springframework.security.web.authentication.www.BasicAuthenticationFilter;

import static org.springframework.http.HttpMethod.*;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/10/14
 * @className JwtWebSecurityConfiguration
 * @desc
 */
@Configuration
@RequiredArgsConstructor
public class JwtWebSecurityConfiguration {

    private final AccessDeniedHandler accessDeniedHandler;
    private final AuthenticationEntryPoint authenticationEntryPoint;
    private final JwtAuthenticationProvider jwtAuthenticationProvider;
    private final JwtService jwtService;
    private final JwtCookieFactory jwtCookieFactory;
    private final IpJwtCookieUpdater ipJwtCookieUpdater;
    private final JwtProperties jwtProperties;
    private final MyObjectMapper objectMapper;
    private final TracingService tracingService;

    @Bean
    public SecurityFilterChain jwtFilterChain(HttpSecurity http) throws Exception {
        ProviderManager authenticationManager = new ProviderManager(this.jwtAuthenticationProvider);
        http.authorizeHttpRequests(registry -> registry
                        .requestMatchers(DELETE, "/logout").permitAll()
                        .requestMatchers(POST, "/aliyun/oss-token-requisitions").permitAll()
                        .requestMatchers(GET, "/qrs/submission-qrs/*").permitAll()
                        .requestMatchers(GET, "/presentations/**").permitAll()
                        .requestMatchers(POST, "/submissions").permitAll()
                        .requestMatchers(POST, "/submissions/auto-calculate/number-input").permitAll()
                        .requestMatchers(POST, "/submissions/auto-calculate/item-status").permitAll()
                        .anyRequest().authenticated())
                .authenticationManager(authenticationManager)
                .exceptionHandling()
                .accessDeniedHandler(accessDeniedHandler)
                .authenticationEntryPoint(authenticationEntryPoint)
                .and()
                .addFilterAfter(new JwtAuthenticationFilter(authenticationManager, objectMapper, tracingService), BasicAuthenticationFilter.class)
                .addFilterAfter(new AutoRefreshJwtFilter(jwtService,
                                jwtCookieFactory,
                                ipJwtCookieUpdater,
                                jwtProperties.getAheadAutoRefresh()),
                        AuthorizationFilter.class)
                .addFilterBefore(new MdcFilter(), ExceptionTranslationFilter.class)
                .httpBasic().disable()
                .headers().and()
                .cors().disable()
                .anonymous().authenticationFilter(new JwtAnonymousAuthenticationFilter()).and()
                .csrf().disable()
                .servletApi().disable()
                .logout().disable()
                .sessionManagement().disable()
                .securityContext().disable()
                .requestCache().disable()
                .formLogin().disable();
        return http.build();
    }

    @Bean
    public WebSecurityCustomizer jwtWebSecurityCustomizer() {
        return web -> web.ignoring()
                .requestMatchers("/about", "/favicon.ico", "/error", "/MP_verify_qXC2acLZ7a7qm3Xp.txt",
                        "/local-manual-test/orders/**",
                        "/local-manual-test/receive-webhook",
                        "/api-testing/webhook", "/api-testing/orders/**", "/apptemplates/**")
                .requestMatchers(GET, "/plans")
                .requestMatchers(GET, "/printing-products")
                .requestMatchers(GET, "/mobile-wx/auth2-callback")
                .requestMatchers(GET, "/pc-wx/auth2-callback")
                .requestMatchers(GET, "/wx/mobile-info")
                .requestMatchers(GET, "/wx/pc-info")
                .requestMatchers(POST, "/wx/jssdk-config")
                .requestMatchers(POST, "/preorders/pay-callback/wxpay")
                .requestMatchers(POST, "/verification-codes/for-register")
                .requestMatchers(POST, "/verification-codes/for-login")
                .requestMatchers(POST, "/verification-codes/for-findback-password")
                .requestMatchers(POST, "/login")
                .requestMatchers(POST, "/verification-code-login")
                .requestMatchers(POST, "/members/findback-password")
                .requestMatchers(POST, "/members/registration")
                .requestMatchers(GET, "/tenants/public-profile/*");
    }

}
