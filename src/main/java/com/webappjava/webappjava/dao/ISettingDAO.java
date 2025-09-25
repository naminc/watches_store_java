package com.webappjava.webappjava.dao;

import com.webappjava.webappjava.entity.Setting;
import com.webappjava.webappjava.exception.DAOException;

public interface ISettingDAO {
    Setting getSetting() throws DAOException;
    void updateSetting(Setting setting) throws DAOException;
}