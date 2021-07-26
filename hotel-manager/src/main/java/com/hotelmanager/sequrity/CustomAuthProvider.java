package com.hotelmanager.sequrity;

import com.hotelmanager.model.User;
import com.hotelmanager.repository.UserDao;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Component;

import java.util.Collections;

@Component
public class CustomAuthProvider implements AuthenticationProvider {

    private final UserDao userDao;


    public CustomAuthProvider(UserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        User user = userDao.getUser(authentication.getName());
        if (authentication.getName().equalsIgnoreCase(user.getEmail()) && authentication.getCredentials().equals(user.getPassword())) {
            return new UsernamePasswordAuthenticationToken(user, null, Collections.singleton(new SimpleGrantedAuthority("ROLE_" + user.getRoleId())));

        }
        return new UsernamePasswordAuthenticationToken(user, null);
    }

    @Override
    public boolean supports(Class<?> authentication) {
        return authentication.equals(UsernamePasswordAuthenticationToken.class);
    }
}
