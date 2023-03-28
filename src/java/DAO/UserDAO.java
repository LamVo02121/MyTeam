/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;
import entity.User;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author HPs
 */
public class UserDAO {
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
    
    public static User validated(String username, String password) {
        User u = new User();
        boolean valid = false;
        try {
            Connection connect = getConnection();
            String sql = "SELECT * FROM Users WHERE username=? and password=?  and isBlock=0";
            PreparedStatement stm = connect.prepareStatement(sql);
            
            stm.setString(1, username);
            stm.setString(2, password);
            
            ResultSet rs = stm.executeQuery();
            int n = 0;
            while (rs.next()) {
                n++;
                u.setId(rs.getInt(1));
                u.setUsername(rs.getString(2));
                u.setPassword(rs.getString(3));
                u.setIsAdmin(rs.getInt(4));
                return u;
            }
            valid = n > 0;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return null;
    }
    
    
    public static int maxId(){
       
        int n = 0;
        try{
            Connection connect = getConnection();
            String query = "SELECT MAX(user_id) FROM Users";
            PreparedStatement stm = connect.prepareStatement(query);
            
            ResultSet rs = stm.executeQuery();
            
            while (rs.next()) {
                n = rs.getInt(1);
                
            }
        }catch(Exception e){
            
        }
        return n + 1;
    }
    
    
    public static boolean insertUser(String username, String password){
        boolean kq=false;
        try {
            Connection connect = getConnection();
            String sql =  "INSERT INTO Users(user_id, username, password, isAdmin, isBlock) VALUES (?,?,?,0,0)";
            PreparedStatement stm = connect.prepareStatement(sql);
            stm.setInt(1,maxId());
            stm.setString(2,username);
            stm.setString(3,password);
            int n = stm.executeUpdate();
            kq = n > 0;
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }
        return kq;
    }
    
    public static List<User> getAllUser(){
        List<User> list = new ArrayList<>();
        String n = null;
        try{
            Connection connect = getConnection();
            String query = "SELECT * FROM Users";
            PreparedStatement stm = connect.prepareStatement(query);
            
            ResultSet rs = stm.executeQuery();
            
            while (rs.next()) {
                
                User u = new User();
                u.setId(rs.getInt(1));
                u.setUsername(rs.getString(2));
                u.setPassword(rs.getString(3));
                u.setIsAdmin(rs.getInt(4));
                u.setIsBlock(rs.getInt(5));
//                n = rs.getString(1);
                list.add(u);
            }
        }catch(Exception e){
            
        }
        return list;
    }
    
    public static User getUser(String username){
        int n = 0;
        User u = new User();
        try{
            Connection connect = getConnection();
            String query = "SELECT * FROM Users WHERE username = ?";
            PreparedStatement stm = connect.prepareStatement(query);
            stm.setString(1, username);
            ResultSet rs = stm.executeQuery();
            
            while (rs.next()) {
                n++;
               
                u.setId(rs.getInt(1));
                u.setUsername(rs.getString(2));
                u.setPassword(rs.getString(3));
                u.setIsAdmin(rs.getInt(4));
                u.setIsBlock(rs.getInt(5));
               
                
            }
        }catch(Exception e){
            
        }
        return u;
    }
    
//    public static boolean updateUser(User user){
//        boolean kq=false;
//        int n = 0;
//        try {
//            Connection connect = getConnection();
//            String sql =  "UPDATE Users SET username = ?, password = ?" +
//"where username = ?";
//            PreparedStatement stm = connect.prepareStatement(sql);
//            stm.setString(1,user.getUsername());
//            stm.setString(2,user.getPassword());
//            stm.setString(3,user.getUsername());
//            n = stm.executeUpdate();
//            kq = n > 0;
//        } catch (SQLException ex) {
//            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return kq;
//    }
  
        public static boolean blockUser(String id){
           boolean kq=false;
           int n = 0;
           try {
               Connection connect = getConnection();
               String sql =  "UPDATE Users SET isBlock=1 where user_id = ?";
               PreparedStatement stm = connect.prepareStatement(sql);
               stm.setInt(1, Integer.parseInt(id));

               n = stm.executeUpdate();
               kq = n > 0;
            } catch (SQLException ex) {
               Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
                }
           return kq;
       }
        
        public static boolean unblockUser(String id){
           boolean kq=false;
           int n = 0;
           try {
               Connection connect = getConnection();
               String sql =  "UPDATE Users SET isBlock=0 where user_id = ?";
               PreparedStatement stm = connect.prepareStatement(sql);
               stm.setInt(1, Integer.parseInt(id));

               n = stm.executeUpdate();
               kq = n > 0;
            } catch (SQLException ex) {
               Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
                }
           return kq;
       }
    
//    public static boolean deleteUser(String id){
//        boolean kq=false;
//        int n = 0;
//        try {
//            Connection connect = getConnection();
//            String sql =  "DELETE FROM Users WHERE user_id = ?";
//            PreparedStatement stm = connect.prepareStatement(sql);
//            stm.setString(1, id);
//            
//            n = stm.executeUpdate();
//            kq = n > 0;
//        } catch (SQLException ex) {
//            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return kq;
//    }
}
