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
public class Insert extends HttpServlet {

   
   
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
            String username=request.getSession().getAttribute("username").toString();
            
            String title=request.getParameter("Title");
            String category=request.getParameter("categoryChosen");
            String content=request.getParameter("content");
            if(username.length()>0){
            String qry="insert into Details values('"+username+"','"+category+"','"+title+"','"+content+"')";
            st.executeUpdate(qry);
            }else{
                request.setAttribute("Title", title);
                request.setAttribute("categoryChosen", category);
                request.setAttribute("content", content);
                 request.getRequestDispatcher("/WEB-INF/Contribute.jsp").forward(request, response);
            }
            
            st.close();
            request.getRequestDispatcher("/WEB-INF/Home.jsp").forward(request, response);
        }catch(Exception e){
            System.out.println(e);
        }
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
