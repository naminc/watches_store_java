package com.webappjava.webappjava.dao;

import com.webappjava.webappjava.entity.Setting;
import com.webappjava.webappjava.exception.DAOException;

public interface ISettingDAO {
    Setting getSetting() throws DAOException;
    void update(Setting setting) throws DAOException;
}