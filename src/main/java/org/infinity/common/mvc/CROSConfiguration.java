package org.infinity.common.mvc;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/18
 * @className CROSConfiguration
 * @desc
 */
@Configuration
public class CROSConfiguration implements WebMvcConfigurer {

    public static final String HOST = "localhost";
    public static final String PORT = "8081";

    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/**")
                .allowedOrigins("http://" + HOST + ":" + PORT)
                .allowedMethods("GET", "POST", "PUT", "DELETE", "OPTIONS")
                .allowedHeaders("*")
                .allowCredentials(true);
    }

}
