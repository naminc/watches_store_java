package com.webappjava.webappjava.controller.auth;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login")
public class LoginController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("pageTitle", "Login Page");
        req.setAttribute("contentPage", "/views/auth/login.jsp");
        req.getRequestDispatcher("/views/includes/layout.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String username = req.getParameter("username");
        String password = req.getParameter("password");

        HttpSession session = req.getSession();
        if (username == null || username.isEmpty() || password == null || password.isEmpty()) {
            session.setAttribute("flashMessage", "Please fill all required fields!");
            session.setAttribute("flashType", "error");
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }
        if ("admin".equals(username) && "123".equals(password)) {
            session.setAttribute("flashMessage", "Welcome back, " + username + "!");
            session.setAttribute("flashType", "success");
            resp.sendRedirect(req.getContextPath() + "/home");
        } else {
            session.setAttribute("flashMessage", "Invalid username or password!");
            session.setAttribute("flashType", "error");
            resp.sendRedirect(req.getContextPath() + "/login");
        }
    }

}