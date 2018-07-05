/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servs;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jeevi
 */
public class SignUp extends HttpServlet {

   

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       try{
        Connection c = DataBase.getConnection();
            Statement st = c.createStatement();
            String username=request.getParameter("username");
            String password=request.getParameter("password");
            String mobilenumber=request.getParameter("mobilenumber");
            String qry="insert into userdetails values('"+username+"','"+password+"','"+mobilenumber+"')";
            st.executeUpdate(qry);
            st.close();
            
            request.getRequestDispatcher("/WEB-INF/Home.jsp").forward(request, response);
        }catch(Exception e){
            System.out.println(e);
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
