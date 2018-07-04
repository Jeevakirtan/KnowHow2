<%-- 
    Document   : Content
    Created on : 03-Jul-2018, 23:02:22
    Author     : Jeevi
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Servs.DataBase"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <% String Button = request.getParameter("Button");%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%=Button%></title>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    </head>
    <body>
        <div class="w3-bar w3-light-blue  w3-border-white w3-mobile" style="width:auto">
        <form action='Home.jsp'>            
            <button type='submit' class="w3-bar-item w3-button">Home</button>
        </form>
       
    </div>
        <div class="w3-container w3-padding-large w3-section">

<div class="w3-card" style="width:50%">
  <h1><%=Button%></h1>
</div>
            <% 
                Connection c=DataBase.getConnection();
                Statement st=c.createStatement();
                ResultSet rs = st.executeQuery("select * from Details where title='" + Button + "'");
                String con="";
                if(rs.next()){
                con+=rs.getString(5);
                }
                rs.close();
                st.close();
                
                %>
            <div class="w3-panel w3-pale-yellow w3-border w3-border-yellow w3-round-xlarge">
           <p> <%=con%> </p>
            </div>
        </div>
    </body>
</html>
