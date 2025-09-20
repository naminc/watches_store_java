package com.webappjava.webappjava.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Map;

public class FormUtil {
    // Save to session
    public static void saveFormData(HttpServletRequest req, String... keyValues) {
        HttpSession session = req.getSession();
        for (int i = 0; i < keyValues.length; i += 2) {
            session.setAttribute(keyValues[i], keyValues[i+1]);
        }
    }

    // Delete from session
    public static void clearFormData(HttpServletRequest req, String... keys) {
        HttpSession session = req.getSession();
        for (String key : keys) {
            session.removeAttribute(key);
        }
    }
}
