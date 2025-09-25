package com.webappjava.webappjava.service.impl;

import com.webappjava.webappjava.dao.ISettingDAO;
import com.webappjava.webappjava.dao.impl.SettingDAO;
import com.webappjava.webappjava.entity.Setting;
import com.webappjava.webappjava.exception.DAOException;
import com.webappjava.webappjava.service.ISettingService;

public class SettingService implements ISettingService {
    private final ISettingDAO settingDAO = new SettingDAO();

    @Override
    public Setting getSetting() {
        try {
            return settingDAO.getSetting();
        } catch (DAOException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public void updateSetting(Setting setting) {
        try {
            settingDAO.updateSetting(setting);
        } catch (DAOException e) {
            e.printStackTrace();
        }
    }
}
