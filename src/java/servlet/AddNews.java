/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import DAO.CategoryDAO;
import DAO.NewsDAO;
import entity.Category;
import entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Date;
import java.text.ParseException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author HPs
 */
@WebServlet(name = "AddNews", urlPatterns = {"/AddNews"})
public class AddNews extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException {
        response.setContentType("text/html;charset=UTF-8");
//        CategoryDAO dao2 = new CategoryDAO();
//        List<Category> listDM = dao2.getAllCater();
//        request.setAttribute("listDM", listDM);
//        request.getRequestDispatcher("baiviet.jsp").forward(request, response);
    
//        String name = request.getParameter("name");
//        String description = request.getParameter("description");
//        String detail = request.getParameter("detail"); 
//        String image = request.getParameter("image"); 
//        String caterId = request.getParameter("cater");       
//        
//        HttpSession s = request.getSession();
//        User u = (User) s.getAttribute("user");
//        int id = u.getId();
//        boolean valid = false;
//        NewsDAO dao = new NewsDAO();
//        valid = dao.insertNews(name, image, description, detail, caterId, id);
//        if(valid)
//            response.sendRedirect("ShowNews");
//        else{
//            request.setAttribute("alert", "Error");
//            request.getRequestDispatcher("baiviet.jsp").forward(request, response);
        }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //            processRequest(request, response);
        CategoryDAO dao2 = new CategoryDAO();
        List<Category> listDM = dao2.getAllCater();
        request.setAttribute("listDM", listDM);
        request.getRequestDispatcher("addbaiviet.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
//            processRequest(request, response);
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String detail = request.getParameter("detail"); 
        String image = request.getParameter("image"); 
        String caterId = request.getParameter("cater");       
        
        HttpSession s = request.getSession();
        User u = (User) s.getAttribute("user");
        int id = u.getId();
        boolean valid = false;
        NewsDAO dao = new NewsDAO();
        valid = dao.insertNews(name, image, description, detail, caterId, id);
        if(valid)
            response.sendRedirect("ShowNews");
        else{
            request.setAttribute("alert", "Error");
            request.getRequestDispatcher("addbaiviet.jsp").forward(request, response);
        } 
        
        } catch (ParseException ex) {
            Logger.getLogger(AddNews.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
