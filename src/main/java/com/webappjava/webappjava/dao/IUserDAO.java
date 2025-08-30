package com.webappjava.webappjava.dao;

import com.webappjava.webappjava.entity.User;
import com.webappjava.webappjava.exception.DAOException;
import java.util.List;


public interface IUserDAO {
    List<User> findAll() throws DAOException;
    void insert(User user) throws DAOException;
//    void update(User user) throws DAOException;
    void delete(int userId) throws DAOException;
//    User findById(int userId) throws DAOException;
//    User findByUsername(String username) throws DAOException;
//    User findByEmail(String email) throws DAOException;
//    boolean existsByUsername(String username) throws DAOException;
}