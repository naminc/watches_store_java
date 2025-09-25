package com.webappjava.webappjava.controller.auth;

import com.webappjava.webappjava.constants.RoleConstants;
import com.webappjava.webappjava.entity.User;
import com.webappjava.webappjava.factory.UserFactory;
import com.webappjava.webappjava.service.IAuthService;
import com.webappjava.webappjava.service.IUserService;
import com.webappjava.webappjava.service.impl.AuthService;
import com.webappjava.webappjava.service.impl.UserService;
import com.webappjava.webappjava.util.FlashUtil;
import com.webappjava.webappjava.util.FormUtil;
import com.webappjava.webappjava.validation.RegisterValidator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/register")
public class RegisterController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private final IAuthService authService = new AuthService();
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

        FormUtil.saveFormData(req,
                "oldEmail", email,
                "oldUsername", username
        );
        String errorMessage = RegisterValidator.validate(email, username, password, confirmPassword, userService);
        if (errorMessage != null) {
            FlashUtil.setFlash(session, errorMessage, "error");
            resp.sendRedirect(req.getContextPath() + "/register");
            return;
        }
        FormUtil.clearFormData(req, "oldEmail", "oldUsername");

        User user = UserFactory.createUser(username, password, email, RoleConstants.USER);
        authService.register(user);

        FlashUtil.setFlash(session, "Registration successful! You can now login.", "success");
        resp.sendRedirect(req.getContextPath() + "/login");
    }
}