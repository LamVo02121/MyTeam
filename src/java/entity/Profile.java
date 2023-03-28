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
public class Profile {
    private int id;
    private String fullname;
    private Date date;
    private String address;
    private String email;
    private String about;
    private int user_id;

    public Profile(int id, String fullname, Date date, String address, String email, String about, int user_id) {
        this.id = id;
        this.fullname = fullname;
        this.date = date;
        this.address = address;
        this.email = email;
        this.about = about;
        this.user_id = user_id;
    }

    public Profile() {
    }

    public int getId() {
        return id;
    }

    public String getFullname() {
        return fullname;
    }

    public Date getDate() {
        return date;
    }

    public String getAddress() {
        return address;
    }

    public String getEmail() {
        return email;
    }

    public String getAbout() {
        return about;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }
    
    
}
