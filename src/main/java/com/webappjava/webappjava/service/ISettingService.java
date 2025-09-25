package com.webappjava.webappjava.service;

import com.webappjava.webappjava.entity.Setting;

public interface ISettingService {
    Setting getSetting();
    void updateSetting(Setting setting);
}