package com.webappjava.webappjava.entity;

import java.time.LocalDateTime;

public class Category extends BaseEntity {
    private String name;
    private String slug;
    private String description;
    private int status;

    public Category() {}

    public Category(int id, String name, String slug, String description, int status, LocalDateTime createdAt, LocalDateTime updatedAt) {
        this.id = id;
        this.name = name;
        this.slug = slug;
        this.description = description;
        this.status = status;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }

    // Getter & Setter
    public String getName() { return name; }
    public String getSlug() { return slug; }
    public String getDescription() { return description; }
    public int getStatus() { return status; }

    public void setName(String name) { this.name = name; }
    public void setSlug(String slug) { this.slug = slug; }
    public void setDescription(String description) { this.description = description; }
    public void setStatus(int status) { this.status = status; }

}