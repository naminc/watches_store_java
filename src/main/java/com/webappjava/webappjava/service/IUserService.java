package com.webappjava.webappjava.service;

import com.webappjava.webappjava.entity.User;

import java.util.List;

public interface IUserService {
    List<User> findAll();
    void delete(int userId);
    User findByUsername(String username);
    User findByEmail(String email);
}