package com.webappjava.webappjava.controller.web;

import com.webappjava.webappjava.entity.User;
import com.webappjava.webappjava.service.IUserService;
import com.webappjava.webappjava.service.impl.UserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/home")
public class HomeController extends HttpServlet {
    private final IUserService userService = new UserService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String msg = req.getParameter("msg");
        if (msg != null) {
            req.setAttribute("msg", msg);
        }
        List<User> users = userService.findAll();
        req.setAttribute("users", users);
        req.setAttribute("pageTitle", "Home Page");
        req.setAttribute("contentPage", "/views/web/home.jsp");
        req.getRequestDispatcher("/views/includes/layout.jsp").forward(req, resp);
    }
}