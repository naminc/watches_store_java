package com.webappjava.webappjava.controller.web;

import com.webappjava.webappjava.entity.User;
import com.webappjava.webappjava.util.FlashUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/account")
public class AccountController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        User currentUser = (session != null) ? (User) session.getAttribute("currentUser") : null;
        if (currentUser == null) {
            FlashUtil.setFlash(req.getSession(), "Please login to access your account!", "error");
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }
        req.setAttribute("pageTitle", "My Account");
        req.setAttribute("contentPage", "/views/web/account.jsp");
        req.getRequestDispatcher("/views/includes/layout.jsp").forward(req, resp);
    }
}