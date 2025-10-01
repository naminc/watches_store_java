package com.webappjava.webappjava.filter;

import com.webappjava.webappjava.entity.Setting;
import com.webappjava.webappjava.service.ISettingService;
import com.webappjava.webappjava.service.impl.SettingService;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter("/*")
public class SettingFilter implements Filter {

    private final ISettingService settingService = new SettingService();
    private Setting cachedSetting;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        cachedSetting = settingService.getSetting();
    }
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        cachedSetting = settingService.getSetting();
        if (cachedSetting != null && cachedSetting.isMaintenanceMode()) {
            String uri = req.getRequestURI();
            if (!uri.endsWith("maintenance.jsp") && !uri.contains("/admin")) {
                req.setAttribute("setting", cachedSetting);
                req.getRequestDispatcher("/views/maintenance.jsp").forward(req, resp);
                return;
            }
        }
        req.setAttribute("settings", cachedSetting);
        chain.doFilter(request, response);
    }
    @Override
    public void destroy() {
    }
}