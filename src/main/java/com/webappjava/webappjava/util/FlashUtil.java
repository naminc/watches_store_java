package com.webappjava.webappjava.util;

import javax.servlet.http.HttpSession;

public class FlashUtil {
    public static void setFlash(HttpSession session, String message, String type) {
        session.setAttribute("flashMessage", message);
        session.setAttribute("flashType", type); // success, error, info, warning
    }
}