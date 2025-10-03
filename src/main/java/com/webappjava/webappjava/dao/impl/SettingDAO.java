package com.webappjava.webappjava.dao.impl;

import com.webappjava.webappjava.dao.ISettingDAO;
import com.webappjava.webappjava.entity.Setting;
import com.webappjava.webappjava.exception.DAOException;
import com.webappjava.webappjava.util.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SettingDAO implements ISettingDAO {
    @Override
    public Setting getSetting() throws DAOException {
        String sql = "SELECT * FROM settings WHERE id = 1";
        try (Connection conn = JDBCUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            if (rs.next()) {
                return new Setting(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("keyword"),
                        rs.getString("description"),
                        rs.getString("brand"),
                        rs.getString("domain"),
                        rs.getString("owner"),
                        rs.getString("email"),
                        rs.getString("phone"),
                        rs.getString("address"),
                        rs.getString("logo"),
                        rs.getString("icon"),
                        rs.getString("maintenance"),
                        rs.getTimestamp("created_at").toLocalDateTime(),
                        rs.getTimestamp("updated_at").toLocalDateTime()
                );
            }
        } catch (SQLException e) {
            throw new DAOException("Failed to load settings.", e);
        }
        return null;
    }

    @Override
    public void update(Setting setting) throws DAOException {
        String sql = "UPDATE settings SET title=?, keyword=?, description=?, brand=?, " +
                "domain=?, owner=?, email=?, phone=?, address=?, logo=?, icon=?, maintenance=?, updated_at=NOW() WHERE id=1";
        try (Connection conn = JDBCUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, setting.getTitle());
            stmt.setString(2, setting.getKeyword());
            stmt.setString(3, setting.getDescription());
            stmt.setString(4, setting.getBrand());
            stmt.setString(5, setting.getDomain());
            stmt.setString(6, setting.getOwner());
            stmt.setString(7, setting.getEmail());
            stmt.setString(8, setting.getPhone());
            stmt.setString(9, setting.getAddress());
            stmt.setString(10, setting.getLogo());
            stmt.setString(11, setting.getIcon());
            stmt.setString(12, setting.getMaintenance());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new DAOException("Failed to update settings.", e);
        }
    }
}