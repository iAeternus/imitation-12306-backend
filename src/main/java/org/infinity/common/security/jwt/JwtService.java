package org.infinity.common.security.jwt;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import lombok.RequiredArgsConstructor;
import org.infinity.common.security.MyAuthenticationToken;
import org.infinity.core.common.properties.JwtProperties;
import org.infinity.core.user.infrastructure.repository.UserRepository;
import org.infinity.core.user.model.po.UserPO;
import org.springframework.stereotype.Component;

import java.util.Date;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/9/11
 * @className JwtService
 * @desc
 */
@Component
@RequiredArgsConstructor
public class JwtService {

    private final JwtProperties jwtProperties;
    private final UserRepository userRepository;

    public String generateJwt(String userId) {
        Date now = new Date();
        Date expirationDate = new Date(now.getTime() + jwtProperties.getExpire() * 60L * 1000L);
        return generateJwt(userId, expirationDate);
    }

    public String generateJwt(String userId, Date expirationDate) {
        Claims claims = Jwts.claims().setSubject(userId);

        return Jwts.builder()
                .setClaims(claims)
                .setIssuer(jwtProperties.getIssuer())
                .setIssuedAt(new Date())
                .setExpiration(expirationDate)
                .signWith(SignatureAlgorithm.HS512, jwtProperties.getSecret())
                .compact();
    }

    public MyAuthenticationToken tokenFrom(String jwt) {
        Claims claims = Jwts.parser().setSigningKey(jwtProperties.getSecret()).parseClaimsJws(jwt).getBody();
        String userId = claims.getSubject();
        UserPO user = userRepository.cachedById(userId);
        long expiration = claims.getExpiration().getTime();
        return new MyAuthenticationToken(UserPO.humanUser(userId, user.getNickname(), user.getRole()), expiration);
    }

}
