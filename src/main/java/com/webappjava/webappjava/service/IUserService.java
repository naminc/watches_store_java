package com.webappjava.webappjava.service;

import com.webappjava.webappjava.entity.User;

import java.util.List;

public interface IUserService {
    List<User> findAll();
}
