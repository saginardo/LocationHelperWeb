package com.notinglife.webapp.LocationHelper.utils;

import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.crypto.spec.SecretKeySpec;
import javax.xml.bind.DatatypeConverter;
import java.security.Key;
import java.util.Map;

/**
 * 用于生成token
 *
 * @author saginardo
 * @version v1.0
 * @date 2017-07-08 12:02
 */
public class JavaWebToken {

    private static final String TAG = "JavaWebToken";
    private static Logger logger = LogManager.getLogger(TAG);

    private static Key getKeyInstance() {

        SignatureAlgorithm signatureAlgorithm = SignatureAlgorithm.HS256;
        byte[] apiKeySecretBytes = DatatypeConverter.parseBase64Binary("LocationHelper");
        Key signingKey = new SecretKeySpec(apiKeySecretBytes, signatureAlgorithm.getJcaName());
        return signingKey;
    }

    public static String createJavaWebToken(Map<String, Object> claims) {
        return Jwts.builder().setClaims(claims)
                            .signWith(SignatureAlgorithm.HS256, getKeyInstance())
                            .compact();
    }

    public static Map<String, Object> verifyJavaWebToken(String jwt) {
        try {

            Map<String, Object> jwtClaims =
                    Jwts.parser().setSigningKey(getKeyInstance()).parseClaimsJws(jwt).getBody();
            return jwtClaims;
        } catch (Exception e) {
            logger.error("json web token 验证失败");
            return null;
        }
    }

}
