package com.webappjava.webappjava.service.impl;

import com.webappjava.webappjava.dao.ICategoryDAO;
import com.webappjava.webappjava.dao.impl.CategoryDAO;
import com.webappjava.webappjava.service.ICategoryService;

public class CategoryService implements ICategoryService {
    private final ICategoryDAO categoryDAO = new CategoryDAO();


}
