package com.webappjava.webappjava.controller.auth;

import com.webappjava.webappjava.entity.User;
import com.webappjava.webappjava.service.IUserService;
import com.webappjava.webappjava.service.impl.UserService;
import com.webappjava.webappjava.util.FlashUtil;
import com.webappjava.webappjava.util.ValidationUtil;

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

    private final IUserService userService = new UserService();
    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        if (session != null && session.getAttribute("currentUser") != null) {
            resp.sendRedirect(req.getContextPath() + "/home");
            return;
        }
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
        if (ValidationUtil.isNullOrEmpty(username) || ValidationUtil.isNullOrEmpty(password)) {
            FlashUtil.setFlash(session, "Please fill all required fields!", "error");
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }
        if (!ValidationUtil.isValidUsername(username)) {
            FlashUtil.setFlash(session, "Username must be at least 6 characters!", "error");
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }
        if (!ValidationUtil.isValidPassword(password)) {
            FlashUtil.setFlash(session, "Password must be at least 6 characters!", "error");
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }

        User user = userService.login(username, password);

        if (user != null) {
            session.setAttribute("currentUser", user);
            FlashUtil.setFlash(session, "Welcome back, " + user.getUsername() + "!", "success");
            resp.sendRedirect(req.getContextPath() + "/home");
        } else {
            FlashUtil.setFlash(session, "Invalid username or password!", "error");
            resp.sendRedirect(req.getContextPath() + "/login");
        }
    }
}