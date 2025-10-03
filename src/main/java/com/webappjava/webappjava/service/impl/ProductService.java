package com.webappjava.webappjava.service.impl;

import com.webappjava.webappjava.dao.IProductDAO;
import com.webappjava.webappjava.dao.impl.ProductDAO;
import com.webappjava.webappjava.service.IProductService;

public class ProductService implements IProductService {
    private final IProductDAO productDAO = new ProductDAO();


}