package com.webappjava.webappjava.service.impl;

import com.webappjava.webappjava.dao.IUserDAO;
import com.webappjava.webappjava.dao.impl.UserDAO;
import com.webappjava.webappjava.entity.User;
import com.webappjava.webappjava.exception.DAOException;
import com.webappjava.webappjava.service.IUserService;
import com.webappjava.webappjava.util.PasswordUtil;

import java.util.Collections;
import java.util.List;

public class UserService implements IUserService {

    private final IUserDAO userDAO = new UserDAO();

    @Override
    public List<User> findAll() {
        try {
            return userDAO.findAll();
        } catch (DAOException e) {
            e.printStackTrace();
            return Collections.emptyList();
        }
    }

    @Override
    public void delete(int userId) {
        try {
            userDAO.delete(userId);
        } catch (DAOException e) {
            e.printStackTrace();
        }
    }
    public User findByUsername(String username) {
        try {
            return userDAO.findByUsername(username);
        } catch (DAOException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public User findByEmail(String email) {
        try {
            return userDAO.findByEmail(email);
        } catch (DAOException e) {
            e.printStackTrace();
            return null;
        }
    }
}