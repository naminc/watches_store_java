package com.webappjava.webappjava.factory;

import com.webappjava.webappjava.entity.User;
import com.webappjava.webappjava.constants.RoleConstants;

import java.time.LocalDateTime;

public class UserFactory {
    public static User createUser(String username, String rawPassword, String email, String role) {
        User user = new User();
        user.setUsername(username);
        user.setPassword(rawPassword);
        user.setEmail(email);
        user.setRole(role != null ? role : RoleConstants.USER);
        user.setCreatedAt(LocalDateTime.now());
        user.setUpdatedAt(LocalDateTime.now());
        return user;
    }
}