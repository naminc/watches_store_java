package com.webappjava.webappjava.util.validator;

import com.webappjava.webappjava.service.IUserService;
import com.webappjava.webappjava.util.ValidationUtil;

public class RegisterValidator {
    public static String validate(String email, String username, String password, String confirmPassword, IUserService userService) {
        if (ValidationUtil.isNullOrEmpty(email) || ValidationUtil.isNullOrEmpty(username) || ValidationUtil.isNullOrEmpty(password)) {
            return "Please fill all required fields!";
        }
        if (!ValidationUtil.isValidEmail(email)) {
            return "Invalid email address!";
        }
        if (!ValidationUtil.isValidUsername(username)) {
            return "Username must be 6-20 characters!";
        }
        if (!ValidationUtil.isValidPassword(password)) {
            return "Password must be at least 6 characters!";
        }
        if (!ValidationUtil.isPasswordConfirmed(password, confirmPassword)) {
            return "Passwords do not match!";
        }
        if (userService.findByUsername(username) != null) {
            return "Username already exists!";
        }
        if (userService.findByEmail(email) != null) {
            return "Email already registered!";
        }
        return null;
    }
}
