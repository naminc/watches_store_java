package com.webappjava.webappjava.controller.web;

import com.webappjava.webappjava.exception.DAOException;
import com.webappjava.webappjava.service.IUserService;
import com.webappjava.webappjava.service.impl.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/deletetest")
public class DeleteTestController extends HttpServlet {
    private final IUserService userService = new UserService();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String userIdParam = req.getParameter("userId");
        try {
            int userId = Integer.parseInt(userIdParam);
            userService.delete(userId);

        } catch (NumberFormatException e) {
            e.printStackTrace(); // Ghi log
            req.setAttribute("error", "Không thể xóa người dùng.");
        }

        resp.sendRedirect(req.getContextPath() + "/home?msg=delete_success");
    }
}
