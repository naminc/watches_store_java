package com.webappjava.webappjava.controller.admin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet({"/admin/categories", "/admin/categories/create", "/admin/categories/store", "/admin/categories/edit", "/admin/categories/update", "/admin/categories/delete"})
public class CategoryController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("pageTitle", "Admin Category");
        req.setAttribute("contentPage", "/views/admin/categories/index.jsp");
        req.getRequestDispatcher("/views/includes/admin-layout.jsp").forward(req, resp);
    }
}