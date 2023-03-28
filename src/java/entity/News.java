/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.sql.Date;

/**
 *
 * @author HPs
 */
public class News {
    private int id;
    private String name;
    private String description;
    private String detail;
    private String image;
    private Date date;
    private int cat_id;
    private int user_id;

    public News() {
    }

    public News(int id, String name, String description, String detail, String image, Date date, int cat_id, int user_id) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.detail = detail;
        this.image = image;
        this.date = date;
        this.cat_id = cat_id;
        this.user_id = user_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    

    public int getCat_id() {
        return cat_id;
    }

    public void setCat_id(int cat_id) {
        this.cat_id = cat_id;
    }

    
    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }

    public String getDetail() {
        return detail;
    }

    public String getImage() {
        return image;
    }

    public Date getDate() {
        return date;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public void setDate(Date date) {
        this.date = date;
    }
    
    
}
