package com.webappjava.webappjava.util;

public class ValidationUtil {

    // Check null or empty
    public static boolean isNullOrEmpty(String str) {
        return (str == null || str.trim().isEmpty());
    }

    // Check min length
    public static boolean hasMinLength(String str, int minLength) {
        return (str != null && str.trim().length() >= minLength);
    }

    // Valid Email
    public static boolean isValidEmail(String email) {
        if (isNullOrEmpty(email)) return false;
        String regex = "^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$";
        return email.matches(regex);
    }

    // Valid Username
    public static boolean isValidUsername(String username) {
        if (isNullOrEmpty(username)) return false;
        return username.length() >= 6 && username.length() <= 32;
    }

    // Valid Password
    public static boolean isValidPassword(String password) {
        if (isNullOrEmpty(password)) return false;
        return password.length() >= 6;
    }

    // Strong Password
    public static boolean isStrongPassword(String password) {
        if (isNullOrEmpty(password)) return false;
        String regex = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]{8,}$";
        return password.matches(regex);
    }

    // Confirm Password
    public static boolean isPasswordConfirmed(String password, String confirmPassword) {
        return password != null && password.equals(confirmPassword);
    }
}