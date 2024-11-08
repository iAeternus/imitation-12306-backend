package org.infinity.core.common.properties;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;
import org.springframework.validation.annotation.Validated;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/9/11
 * @className JwtProperties
 * @desc Jwt配置项
 */
@Data
@Component
@Validated
@ConfigurationProperties("my.jwt")
public class JwtProperties {

    /**
     * 发行者
     */
    @NotBlank
    private String issuer;

    /**
     * 密钥
     */
    @NotBlank
    private String secret;

    /**
     * 过期时间，单位：分钟<br>
     * 至少为60分钟，最多为43200分钟（即30天）<br>
     */
    @Min(value = 60)
    @Max(value = 43200)
    private int expire;

    /**
     * 自动刷新时间提前量，单位：分钟<br>
     * 至少为10分钟，最多为2880分钟（即2天）<br>
     */
    @Min(value = 10)
    @Max(value = 2880)
    private int aheadAutoRefresh;

}
