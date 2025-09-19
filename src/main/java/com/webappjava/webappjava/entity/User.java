package com.webappjava.webappjava.entity;
import java.time.LocalDateTime;

public class User extends BaseEntity {
    public static final String ROLE_USER = "user";
    public static final String ROLE_ADMIN = "admin";
    private String username;
    private String password;
    private String email;
    private String role;

    public User() {}

    public User(int id, String username, String password, String email, String role, LocalDateTime createdAt, LocalDateTime updatedAt) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.email = email;
        this.role = role;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }

    // Getters & Setters
    public String getUsername() { return username; }
    public String getPassword() { return password; }
    public String getEmail() { return email; }
    public String getRole() { return role; }

    public void setPassword(String password) { this.password = password; }
    public void setUsername(String username) { this.username = username; }
    public void setEmail(String email) { this.email = email; }
    public void setRole(String role) { this.role = role; }

}
