package com.webappjava.webappjava.dao.impl;

import com.webappjava.webappjava.dao.IUserDAO;
import com.webappjava.webappjava.entity.User;
import com.webappjava.webappjava.exception.DAOException;
import com.webappjava.webappjava.util.JDBCUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDAO implements IUserDAO {
    @Override
    public List<User> findAll() throws DAOException {
        List<User> list = new ArrayList<>();
        String sql = "SELECT * FROM users";
        try (Connection conn = JDBCUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                list.add(new User(
                        rs.getInt("id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("email"),
                        rs.getString("role"),
                        rs.getTimestamp("created_at").toLocalDateTime(),
                        rs.getTimestamp("updated_at").toLocalDateTime()
                ));
            }
        } catch (SQLException e) {
            throw new DAOException("Failed to get user list.", e);
        }
        return list;
    }

    @Override
    public void insert(User user) throws DAOException {
        String sql = "INSERT INTO users (username, password, email, role, created_at, updated_at) VALUES (?, ?, ?, ?, ?, ?)";
        try (Connection conn = JDBCUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getPassword());
            stmt.setString(3, user.getEmail());
            stmt.setString(4, user.getRole());
            stmt.setTimestamp(5, Timestamp.valueOf(user.getCreatedAt()));
            stmt.setTimestamp(6, Timestamp.valueOf(user.getUpdatedAt()));
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new DAOException("Failed to insert user.", e);
        }
    }
    @Override
    public void delete(int userId) throws DAOException {
        String sql = "DELETE FROM users WHERE id = ?";
        try (Connection conn = JDBCUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, userId);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new DAOException("Failed to delete user.", e);
        }
    }
}