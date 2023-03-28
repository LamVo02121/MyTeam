/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import static DAO.NewsDAO.getConnection;
import entity.Profile;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author HPs
 */
public class ProfileDAO {
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
    
    public static Profile getInfoByUser(int proId){
        Profile p= new Profile();
        String n = null;
        try{
            Connection connect = getConnection();
            String query = "SELECT * FROM Profile WHERE user_id= ?";
            PreparedStatement stm = connect.prepareStatement(query);
            stm.setInt(1, proId);
            ResultSet rs = stm.executeQuery();
            
            while (rs.next()) {
               
                p.setId(rs.getInt(1));
                p.setFullname(rs.getString(2));
                p.setDate(rs.getDate(3));
                p.setAddress(rs.getString(4));
                p.setEmail(rs.getString(5));
                p.setAbout(rs.getString(6));
//                n = u.getName();
                
            }
        }catch(Exception e){
            
        }
        return p;
    }
    
    public static Profile getProById(String id){
       Profile u = new Profile();
        String n = null;
        try{
            Connection connect = getConnection();
            String query = "SELECT * FROM Profile WHERE profile_id= ?";
            PreparedStatement stm = connect.prepareStatement(query);
            stm.setString(1, id);
            ResultSet rs = stm.executeQuery();
            
            while (rs.next()) {
                u.setId(rs.getInt(1));
                u.setFullname(rs.getString(2));
                u.setDate(rs.getDate(3));
                u.setAddress(rs.getString(4));
                u.setEmail(rs.getString(5));
                u.setAbout(rs.getString(6));
                u.setUser_id(rs.getInt(7));
//                n = u.getName();
                
            }
        }catch(Exception e){
            
        }
        return u;
    }
    
    public static boolean updatePro(String fullname, String date, String address, 
            String email, String about, String id)throws ParseException{
        boolean kq=false;
        int n = 0;
        try {
            Connection connect = getConnection();
            String sql = "UPDATE Profile SET Ho_ten = ?, Ngay_sinh = ?, Dia_chi = ?, Email = ?, Mo_ta = ?" +
"where profile_id = ?";
            PreparedStatement stm = connect.prepareStatement(sql);
//         
            stm.setString(1,fullname);
            stm.setString(2,date);
            stm.setString(3,address);
            stm.setString(4,email);
            stm.setString(5,about);
            stm.setInt(6, Integer.parseInt(id));
            n = stm.executeUpdate();
            kq = n > 0;
        } catch (SQLException ex) {
            
        }
        return kq;
    }
}
