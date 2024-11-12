package org.infinity.common.security;

import lombok.Getter;
import org.infinity.core.user.model.po.UserPO;
import org.springframework.security.authentication.AbstractAuthenticationToken;
import org.springframework.security.core.authority.SimpleGrantedAuthority;

import java.util.List;

import static java.util.Objects.requireNonNull;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/9/26
 * @className MyAuthenticationToken
 * @desc token
 */
@Getter
public class MyAuthenticationToken extends AbstractAuthenticationToken {

    /**
     * 用户
     */
    private final UserPO user;

    /**
     * 过期时间
     */
    private final long expiration;

    public MyAuthenticationToken(UserPO user, long expiration) {
        super(List.of(new SimpleGrantedAuthority("ROLE_" + user.getRole().name())));
        requireNonNull(user, "UserPO must not be null.");
        this.user = user;
        this.expiration = expiration;
        setAuthenticated(true);
    }

    @Override
    public Object getCredentials() {
        return null;
    }

    @Override
    public Object getPrincipal() {
        return user;
    }

    @Override
    public void eraseCredentials() {
        super.eraseCredentials();
    }
}
