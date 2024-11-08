package org.infinity.common.security.jwt;

import lombok.Getter;
import org.springframework.security.authentication.AbstractAuthenticationToken;

import static org.infinity.core.common.utils.ValidationUtils.requireNonBlank;


/**
 * @author Ricky
 * @version 1.0
 * @date 2024/10/14
 * @className JwtAuthenticationToken
 * @desc
 */
@Getter
public class JwtAuthenticationToken extends AbstractAuthenticationToken {

    private String jwt;

    public JwtAuthenticationToken(String jwt) {
        super(null);
        requireNonBlank(jwt, "Jwt must not be null.");
        this.jwt = jwt;
        super.setAuthenticated(false);
    }

    @Override
    public Object getCredentials() {
        return jwt;
    }

    @Override
    public Object getPrincipal() {
        return null;
    }

    @Override
    public void eraseCredentials() {
        super.eraseCredentials();
        this.jwt = null;
    }
}
