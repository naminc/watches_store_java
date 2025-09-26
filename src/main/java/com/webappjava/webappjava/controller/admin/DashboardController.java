package com.webappjava.webappjava.controller.admin;

import com.webappjava.webappjava.constants.RoleConstants;
import com.webappjava.webappjava.entity.User;
import com.webappjava.webappjava.util.FlashUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet({"/admin", "/admin/dashboard"})
public class DashboardController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("pageTitle", "Admin Dashboard");
        req.setAttribute("contentPage", "/views/admin/dashboard.jsp");
        req.getRequestDispatcher("/views/includes/admin-layout.jsp").forward(req, resp);
    }
}