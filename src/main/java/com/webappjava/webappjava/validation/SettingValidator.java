package com.webappjava.webappjava.validation;

import com.webappjava.webappjava.entity.Setting;

public class SettingValidator {
    public static String validate(Setting settings) {
        if (settings.getTitle() == null || settings.getTitle().trim().isEmpty()) {
            return "Website title is required!";
        }
        if (settings.getEmail() == null || !settings.getEmail().matches("^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$")) {
            return "Invalid email format!";
        }
        if (settings.getPhone() != null && !settings.getPhone().matches("^[0-9\\-\\+]{9,15}$")) {
            return "Invalid phone number!";
        }
        if (!"on".equalsIgnoreCase(settings.getMaintenance()) && !"off".equalsIgnoreCase(settings.getMaintenance())) {
            return "Maintenance mode must be ON or OFF!";
        }
        return null;
    }
}
