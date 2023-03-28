/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author HPs
 */
public class User {
    private int id;
    private String username, password;
    private int isAdmin;
    private int isBlock;
    
    public User() {
    }

    public User(int id, String username, String password, int isAdmin, int isBlock) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.isAdmin = isAdmin;
        this.isBlock = isBlock;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public int getIsBlock() {
        return isBlock;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    public void setIsBlock(int isBlock) {
        this.isBlock = isBlock;
    }

    public int getId() {
        return id;
    }

    
    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

 
    public void setId(int id) {
        this.id = id;
    }
    
    
    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

 
    
    
}
