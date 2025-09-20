package com.webappjava.webappjava.service;

import com.webappjava.webappjava.entity.User;

public interface IAuthService {
    User login(String username, String password);
    void register(User user);
}