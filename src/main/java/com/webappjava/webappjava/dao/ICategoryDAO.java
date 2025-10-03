package com.webappjava.webappjava.dao;

import com.webappjava.webappjava.entity.Category;
import com.webappjava.webappjava.exception.DAOException;

import java.util.List;

public interface ICategoryDAO {
    List<Category> findAll() throws DAOException;
    Category findById(int id) throws DAOException;
    void insert(Category category) throws DAOException;
    void update(Category category) throws DAOException;
    void delete(int id) throws DAOException;
    boolean existsBySlug(String slug) throws DAOException;
}