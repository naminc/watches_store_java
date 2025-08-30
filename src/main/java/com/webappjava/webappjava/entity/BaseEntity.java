package com.webappjava.webappjava.entity;

import java.time.LocalDateTime;

public abstract class BaseEntity {
    protected int id;
    protected LocalDateTime createdAt;
    protected LocalDateTime updatedAt;

    // Getters and Setters
    public int getId() { return id; }
    public LocalDateTime getCreatedAt() { return createdAt; }
    public LocalDateTime getUpdatedAt() { return updatedAt; }

    public void setCreatedAt(LocalDateTime createdAt) { this.createdAt = createdAt; }
    public void setId(int id) { this.id = id; }
    public void setUpdatedAt(LocalDateTime updatedAt) { this.updatedAt = updatedAt; }
}