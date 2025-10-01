package com.webappjava.webappjava.controller.admin;

import com.webappjava.webappjava.entity.Setting;
import com.webappjava.webappjava.service.ISettingService;
import com.webappjava.webappjava.service.impl.SettingService;
import com.webappjava.webappjava.util.FlashUtil;
import com.webappjava.webappjava.validation.SettingValidator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet("/admin/settings")
public class SettingController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private final ISettingService settingService = new SettingService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("pageTitle", "Admin Setting");
        req.setAttribute("contentPage", "/views/admin/settings.jsp");
        req.getRequestDispatcher("/views/includes/admin-layout.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();

        Setting setting = new Setting();
        setting.setId(1); // fixed id
        setting.setTitle(req.getParameter("title"));
        setting.setKeyword(req.getParameter("keyword"));
        setting.setDescription(req.getParameter("description"));
        setting.setLogo(req.getParameter("logo"));
        setting.setIcon(req.getParameter("icon"));
        setting.setOwner(req.getParameter("author"));
        setting.setBrand(req.getParameter("brand"));
        setting.setDomain(req.getParameter("domain"));
        setting.setPhone(req.getParameter("phone"));
        setting.setEmail(req.getParameter("email"));
        setting.setAddress(req.getParameter("address"));
        setting.setMaintenance(req.getParameter("maintenance_mode"));

        // Validate
        String errorMessage = SettingValidator.validate(setting);
        if (errorMessage != null) {
            FlashUtil.setFlash(session, errorMessage, "error");
            resp.sendRedirect(req.getContextPath() + "/admin/settings");
            return;
        }

        try {
            settingService.update(setting);
            FlashUtil.setFlash(session, "Settings updated successfully!", "success");
        } catch (Exception e) {
            FlashUtil.setFlash(session, "Update failed: " + e.getMessage(), "error");
        }

        resp.sendRedirect(req.getContextPath() + "/admin/settings");
    }
}