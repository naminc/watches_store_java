package com.webappjava.webappjava.controller.auth;

import com.webappjava.webappjava.entity.User;
import com.webappjava.webappjava.service.IUserService;
import com.webappjava.webappjava.service.impl.UserService;
import com.webappjava.webappjava.util.FlashUtil;
import com.webappjava.webappjava.validation.RegisterValidator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalDateTime;

@WebServlet("/register")
public class RegisterController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private final IUserService userService = new UserService();

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        if (session != null && session.getAttribute("currentUser") != null) {
            resp.sendRedirect(req.getContextPath() + "/home");
            return;
        }
        req.setAttribute("pageTitle", "Register Page");
        req.setAttribute("contentPage", "/views/auth/register.jsp");
        req.getRequestDispatcher("/views/includes/layout.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String confirmPassword = req.getParameter("confirmPassword");

        HttpSession session = req.getSession();

        session.setAttribute("oldEmail", email);
        session.setAttribute("oldUsername", username);

        String errorMessage = RegisterValidator.validate(email, username, password, confirmPassword, userService);

        if (errorMessage != null) {
            FlashUtil.setFlash(session, errorMessage, "error");
            resp.sendRedirect(req.getContextPath() + "/register");
            return;
        }

        session.removeAttribute("oldEmail");
        session.removeAttribute("oldUsername");

        // User Entity
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        user.setEmail(email);
        user.setRole(User.ROLE_USER);
        user.setCreatedAt(LocalDateTime.now());
        user.setUpdatedAt(LocalDateTime.now());

        userService.register(user);

        FlashUtil.setFlash(session, "Registration successful! You can now login.", "success");
        resp.sendRedirect(req.getContextPath() + "/login");
    }
}