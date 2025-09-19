package com.webappjava.webappjava.service;

import com.webappjava.webappjava.entity.User;

import java.util.List;

public interface IUserService {

    User login(String username, String password);

    List<User> findAll();
    void insert(User user);
    void delete(int userId);
    User findByUsername(String username);
    User findByEmail(String email);
}