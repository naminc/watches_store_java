package com.webappjava.webappjava.dao.impl;

import com.webappjava.webappjava.dao.ICategoryDAO;
import com.webappjava.webappjava.entity.Category;
import com.webappjava.webappjava.exception.DAOException;
import com.webappjava.webappjava.util.JDBCUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CategoryDAO implements ICategoryDAO {

    @Override
    public List<Category> findAll() throws DAOException {
        List<Category> list = new ArrayList<>();
        String sql = "SELECT * FROM categories";
        try (Connection conn = JDBCUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                list.add(new Category(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("slug"),
                        rs.getString("description"),
                        rs.getInt("status"),
                        rs.getTimestamp("created_at").toLocalDateTime(),
                        rs.getTimestamp("updated_at").toLocalDateTime()
                ));
            }
        } catch (SQLException e) {
            throw new DAOException("Failed to get category list.", e);
        }
        return list;
    }

    @Override
    public void insert(Category category) throws DAOException {
        String sql = "INSERT INTO categories (name, slug, description, status, created_at, updated_at) VALUES (?, ?, ?, ?, ?, ?)";
        try (Connection conn = JDBCUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, category.getName());
            stmt.setString(2, category.getSlug());
            stmt.setString(3, category.getDescription());
            stmt.setInt(4, category.getStatus());
            stmt.setTimestamp(5, Timestamp.valueOf(category.getCreatedAt()));
            stmt.setTimestamp(6, Timestamp.valueOf(category.getUpdatedAt()));
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new DAOException("Failed to insert category.", e);
        }
    }

    @Override
    public void update(Category category) throws DAOException {
        String sql = "UPDATE categories SET name=?, slug=?, description=?, status=?, updated_at=? WHERE id=?";
        try (Connection conn = JDBCUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, category.getName());
            stmt.setString(2, category.getSlug());
            stmt.setString(3, category.getDescription());
            stmt.setInt(4, category.getStatus());
            stmt.setTimestamp(5, Timestamp.valueOf(category.getUpdatedAt()));
            stmt.setInt(6, category.getId());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new DAOException("Failed to update category.", e);
        }
    }

    @Override
    public void delete(int id) throws DAOException {
        String sql = "DELETE FROM categories WHERE id = ?";
        try (Connection conn = JDBCUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, id);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new DAOException("Failed to delete category.", e);
        }
    }

    @Override
    public Category findById(int id) throws DAOException {
        String sql = "SELECT * FROM categories WHERE id=?";
        try (Connection conn = JDBCUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return new Category(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("slug"),
                        rs.getString("description"),
                        rs.getInt("status"),
                        rs.getTimestamp("created_at").toLocalDateTime(),
                        rs.getTimestamp("updated_at").toLocalDateTime()
                );
            }
        } catch (SQLException e) {
            throw new DAOException("Failed to find category by ID.", e);
        }
        return null;
    }

    @Override
    public boolean existsBySlug(String slug) throws DAOException {
        String sql = "SELECT COUNT(*) FROM categories WHERE slug = ?";
        try (Connection conn = JDBCUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, slug);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return rs.getInt(1) > 0;
            }
        } catch (SQLException e) {
            throw new DAOException("Failed to check slug existence.", e);
        }
        return false;
    }
}