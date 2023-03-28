/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;


import entity.News;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import static java.time.temporal.TemporalQueries.localDate;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author HPs
 */
public class NewsDAO {
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
    
    public static List<News> getAllNews(){
        List<News> list = new ArrayList<>();
        int n = 0;
        try{
            Connection connect = getConnection();
            String query = "SELECT * FROM News";
            PreparedStatement stm = connect.prepareStatement(query);
            
            ResultSet rs = stm.executeQuery();
            
            while (rs.next()) {
                
                News u = new News();
                u.setId(rs.getInt(1));
                u.setName(rs.getString(2));
                u.setDescription(rs.getString(3));
                u.setDetail(rs.getString(4));
                u.setImage(rs.getString(5));
                u.setDate(rs.getDate(6));
                u.setCat_id(rs.getInt(7));
                u.setUser_id(rs.getInt(8));
//                n = rs.;
                list.add(u);
            }
        }catch(Exception e){
            
        }
        return list;
    }
    
    public static List<News> getLastNews(){
        List<News> list = new ArrayList<>();
        int n = 0;
        try{
            Connection connect = getConnection();
            String query = "SELECT * FROM News ORDER BY date DESC";
            PreparedStatement stm = connect.prepareStatement(query);
            
            ResultSet rs = stm.executeQuery();
            
            while (rs.next()) {
                
                News u = new News();
                u.setId(rs.getInt(1));
                u.setName(rs.getString(2));
                u.setDescription(rs.getString(3));
                u.setDetail(rs.getString(4));
                u.setImage(rs.getString(5));
                u.setDate(rs.getDate(6));
                u.setCat_id(rs.getInt(7));
                u.setUser_id(rs.getInt(8));
//                n = rs.;
                list.add(u);
            }
        }catch(Exception e){
            
        }
        return list;
    }
    
    public static List<News> getNewsByCategory(String id){
        List<News> list = new ArrayList<>();
        String n = null;
        try{
            Connection connect = getConnection();
            String query = "SELECT * FROM News WHERE cat_id= ?";
            PreparedStatement stm = connect.prepareStatement(query);
            stm.setString(1, id);
            ResultSet rs = stm.executeQuery();
            
            while (rs.next()) {
                News u = new News();
                u.setId(rs.getInt(1));
                u.setName(rs.getString(2));
                u.setDescription(rs.getString(3));
                u.setDetail(rs.getString(4));
                u.setImage(rs.getString(5));
                u.setDate(rs.getDate(6));
                u.setCat_id(rs.getInt(7));
                u.setUser_id(rs.getInt(8));
                n = u.getName();
                list.add(u);
            }
        }catch(Exception e){
            
        }
        return list;
    }
    
    public static News getNewsById(String id){
       News u = new News();
        String n = null;
        try{
            Connection connect = getConnection();
            String query = "SELECT * FROM News WHERE news_id= ?";
            PreparedStatement stm = connect.prepareStatement(query);
            stm.setString(1, id);
            ResultSet rs = stm.executeQuery();
            
            while (rs.next()) {
                
                u.setId(rs.getInt(1));
                u.setName(rs.getString(2));
                u.setDescription(rs.getString(3));
                u.setDetail(rs.getString(4));
                u.setImage(rs.getString(5));
                u.setDate(rs.getDate(6));
                u.setCat_id(rs.getInt(7));
                u.setUser_id(rs.getInt(8));
                n = u.getName();
                
            }
        }catch(Exception e){
            
        }
        return u;
    }
    
    public static List<News> getNewsByName(String txtSearch){
       List<News> list= new ArrayList<>();
        String n = null;
        try{
            Connection connect = getConnection();
            String query = "SELECT * FROM News WHERE name like ?";
            PreparedStatement stm = connect.prepareStatement(query);
            stm.setString(1, '%' + txtSearch + '%');
            ResultSet rs = stm.executeQuery();
            
            while (rs.next()) {
                News u = new News();
                u.setId(rs.getInt(1));
                u.setName(rs.getString(2));
                u.setDescription(rs.getString(3));
                u.setDetail(rs.getString(4));
                u.setImage(rs.getString(5));
                u.setDate(rs.getDate(6));
                u.setCat_id(rs.getInt(7));
                u.setUser_id(rs.getInt(8));
                n = u.getName();
                list.add(u);
            }
        }catch(Exception e){
            
        }
        return list;
    }
   
    public static List<News> getNewsByUser(int userId){
       List<News> list= new ArrayList<>();
        String n = null;
        try{
            Connection connect = getConnection();
            String query = "SELECT * FROM News WHERE user_id= ?";
            PreparedStatement stm = connect.prepareStatement(query);
            stm.setInt(1, userId);
            ResultSet rs = stm.executeQuery();
            
            while (rs.next()) {
                News u = new News();
                u.setId(rs.getInt(1));
                u.setName(rs.getString(2));
                u.setDescription(rs.getString(3));
                u.setDetail(rs.getString(4));
                u.setImage(rs.getString(5));
                u.setDate(rs.getDate(6));
                u.setCat_id(rs.getInt(7));
                u.setUser_id(rs.getInt(8));
                n = u.getName();
                list.add(u);
            }
        }catch(Exception e){
            
        }
        return list;
    }
    
    public static int maxId(){
       
        int n = 0;
        try{
            Connection connect = getConnection();
            String query = "SELECT MAX(news_id) FROM News";
            PreparedStatement stm = connect.prepareStatement(query);
            
            ResultSet rs = stm.executeQuery();
            
            while (rs.next()) {
                n = rs.getInt(1);
                
            }
        }catch(Exception e){
            
        }
        return n + 1;
    }
    
//    public static int getIdNewsByName(String name){
//       
//        int n = 0;
//        try{
//            Connection connect = getConnection();
//            String query = "SELECT news_id News WHERE name = ?";
//            PreparedStatement stm = connect.prepareStatement(query);
//            
//            ResultSet rs = stm.executeQuery();
//            
//            while (rs.next()) {
//                n = rs.getInt(1);
//                
//            }
//        }catch(Exception e){
//            
//        }
//        return n + 1;
//    }
    
    public static boolean insertNews(String name, String image, String descrip, 
            String detail, String catId, int userId) throws ParseException{
        boolean kq=false;
        try {
            Connection connect = getConnection();
            String sql =  "INSERT INTO News(news_id, name, description, detail, image, date, cat_id, user_id) VALUES (?,?,?,?,?,?,?,?)";
            PreparedStatement stm = connect.prepareStatement(sql);
            stm.setInt(1, maxId());
            stm.setString(2,name);
            stm.setString(3,descrip);
            stm.setString(4,detail);
            stm.setString(5,image);
//            DateFormat ngay = new SimpleDateFormat("dd/MM/yyyy");
//            Date a = new Date(2022, 10, );
            Date ngay = java.sql.Date.valueOf(java.time.LocalDate.now());
            stm.setDate(6, ngay);
            stm.setInt(7, Integer.parseInt(catId));
            stm.setInt(8, userId);
            
            int n = stm.executeUpdate();
            kq = n > 0;
        } catch (SQLException ex) {
            
        }
        return kq;
    }
   
    public static boolean updateNews(String name, String image, String descrip, 
            String detail, String catId, String id)throws ParseException{
        boolean kq=false;
        int n = 0;
        try {
            Connection connect = getConnection();
            String sql = "UPDATE News SET name = ?, description = ?, detail = ?, image = ?, cat_id = ?" +
"where news_id = ?";
            PreparedStatement stm = connect.prepareStatement(sql);
//         
            stm.setString(1,name);
            stm.setString(2,descrip);
            stm.setString(3,detail);
            stm.setString(4,image);
////            DateFormat ngay = new SimpleDateFormat("dd/MM/yyyy");
////            Date a = new Date(2022, 10, );
//            Date ngay = java.sql.Date.valueOf(java.time.LocalDate.now());
//            stm.setDate(5, ngay);
            stm.setString(5, catId);
            stm.setInt(6, Integer.parseInt(id));
            n = stm.executeUpdate();
            kq = n > 0;
        } catch (SQLException ex) {
//           , description = ?, detail = ?, image = ? , date = ?, cat_id = ?
        }
        return kq;
    }
    
    public static boolean deleteNews(String id){
        boolean kq=false;
        int n = 0;
        try {
            Connection connect = getConnection();
            String sql =  "DELETE FROM News WHERE news_id = ?";
            PreparedStatement stm = connect.prepareStatement(sql);
            stm.setString(1, id);
            
            n = stm.executeUpdate();
            kq = n > 0;
        } catch (Exception e) {
        
        }
        return kq;
    }
}