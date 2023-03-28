/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;


import entity.Category;
import entity.News;
import entity.User;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author HPs
 */
public class CategoryDAO {
    public static Connection getConnection() {
        Connection connect = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsweb?zeroDateTimeBehavior=CONVERT_TO_NULL", "root", "abc108925");
            System.out.println("connect successfully!");
        } catch (Exception e) {
            System.out.println("connect failure!");
            
        }
        return connect;
    }
    
    public static List<Category> getAllCater(){
        List<Category> list = new ArrayList<>();
        int n = 0;
        try{
            Connection connect = getConnection();
            String query = "SELECT * FROM Categories";
            PreparedStatement stm = connect.prepareStatement(query);
            
            ResultSet rs = stm.executeQuery();
            
            while (rs.next()) {
                
                Category u = new Category();
                u.setId(rs.getInt(1));
                u.setName(rs.getString(2));
                
                list.add(u);
            }
        }catch(Exception e){
            
        }
        return list;
    }
    
    public static Category getCaterById(String id){
        Category u = new Category();
        String n = null;
        try{
            Connection connect = getConnection();
            String query = "SELECT * FROM Categories WHERE cat_id= ?";
            PreparedStatement stm = connect.prepareStatement(query);
            stm.setString(1, id);
            ResultSet rs = stm.executeQuery();
            
            while (rs.next()) {
                
                u.setId(rs.getInt(1));
                u.setName(rs.getString(2));
                
                n = u.getName();
                
            }
        }catch(Exception e){
            
        }
        return u;
    }
    
    public static int maxId(){
       
        int n = 0;
        try{
            Connection connect = getConnection();
            String query = "SELECT MAX(cat_id) FROM Categories";
            PreparedStatement stm = connect.prepareStatement(query);
            
            ResultSet rs = stm.executeQuery();
            
            while (rs.next()) {
                n = rs.getInt(1);
                
            }
        }catch(Exception e){
            
        }
        return n + 1;
    }
    
     public static boolean insertCater(String name){
        boolean kq=false;
        try {
            Connection connect = getConnection();
            String sql =  "INSERT INTO Categories(cat_id, name) VALUES (?,?)";
            PreparedStatement stm = connect.prepareStatement(sql);
            stm.setInt(1,maxId());
            stm.setString(2,name);
           
            int n = stm.executeUpdate();
            kq = n > 0;
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }
        return kq;
    }
    
    public static boolean updateCater(String name, String id){
        boolean kq=false;
        int n = 0;
        try {
            Connection connect = getConnection();
            String sql = "UPDATE Categories SET name = ?" +
"where cat_id = ?";
            PreparedStatement stm = connect.prepareStatement(sql);
//         
            stm.setString(1,name);
            stm.setString(2,id);
         
            n = stm.executeUpdate();
            kq = n > 0;
        } catch (SQLException ex) {

        }
        return kq;
    }
    
    
}
