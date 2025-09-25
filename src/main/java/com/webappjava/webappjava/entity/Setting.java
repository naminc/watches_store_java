package com.webappjava.webappjava.entity;

import java.time.LocalDateTime;

public class Setting extends BaseEntity {
    private String title;
    private String keyword;
    private String description;
    private String brand;
    private String domain;
    private String owner;
    private String email;
    private String phone;
    private String address;
    private String logo;
    private String icon;
    private String maintenance; // "on" / "off"

    // Constructor
    public Setting() {}

    // Constructor
    public Setting(int id, String title, String keyword, String description, String brand, String domain, String owner, String email, String phone, String address, String logo, String icon, String maintenance, LocalDateTime createdAt, LocalDateTime updatedAt) {
        this.id = id;
        this.title = title;
        this.keyword = keyword;
        this.description = description;
        this.brand = brand;
        this.domain = domain;
        this.owner = owner;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.logo = logo;
        this.icon = icon;
        this.maintenance = maintenance;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }

    // Getter & Setter
    public String getTitle() { return title; }
    public String getKeyword() { return keyword; }
    public String getDescription() { return description; }
    public String getBrand() { return brand; }
    public String getDomain() { return domain; }
    public String getOwner() { return owner; }
    public String getEmail() { return email; }
    public String getPhone() { return phone; }
    public String getAddress() { return address; }
    public String getLogo() { return logo; }
    public String getIcon() { return icon; }
    public String getMaintenance() { return maintenance; }

    public void setTitle(String title) { this.title = title; }
    public void setKeyword(String keyword) { this.keyword = keyword; }
    public void setDescription(String description) { this.description = description; }
    public void setBrand(String brand) { this.brand = brand; }
    public void setDomain(String domain) { this.domain = domain; }
    public void setOwner(String owner) { this.owner = owner; }
    public void setEmail(String email) { this.email = email; }
    public void setPhone(String phone) { this.phone = phone; }
    public void setAddress(String address) { this.address = address; }
    public void setLogo(String logo) { this.logo = logo; }
    public void setIcon(String icon) { this.icon = icon; }
    public void setMaintenance(String maintenance) { this.maintenance = maintenance; }

    // Helper: check maintenance mode
    public boolean isMaintenanceMode() {
        return "on".equalsIgnoreCase(maintenance);
    }
}