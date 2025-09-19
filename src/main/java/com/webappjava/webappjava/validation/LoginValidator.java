package com.webappjava.webappjava.validation;

import com.webappjava.webappjava.util.ValidationUtil;

public class LoginValidator {
    public static String validate(String username, String password) {
        if (ValidationUtil.isNullOrEmpty(username) || ValidationUtil.isNullOrEmpty(password)) {
            return "Please fill all required fields!";
        }
        if (!ValidationUtil.isValidUsername(username)) {
            return "Username must be at least 6 characters!";
        }
        if (!ValidationUtil.isValidPassword(password)) {
            return "Password must be at least 6 characters!";
        }
        return null;
    }
}
