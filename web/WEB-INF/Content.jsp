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
        <form action='Login'>            
            <button type='submit' class="w3-bar-item  w3-red w3-margin-left w3-button">Home</button>
        </form>
       
    </div>
        <div class="w3-container w3-margin w3-padding-large w3-section w3-mobile">

<div class="w3-block" style="width:50%">
  <h1><%=Button%></h1>
</div>
            <% 
                Connection c=DataBase.getConnection();
                Statement st=c.createStatement();
                ResultSet rs = st.executeQuery("select * from Details where title='" + Button + "'");
                String con="";
                if(rs.next()){
                con+=rs.getString(4);
                }
                rs.close();
                st.close();
                String arr[]=con.split("\n");
                for(int i=0;i<arr.length;i++){
                    
                if(arr[i].length()>0){
                %>
            <div class="w3-panel w3-mobile w3-pale-yellow w3-border w3-border-yellow w3-round-xlarge">
           <p> <%=arr[i]%> </p>
            </div>
            <% }} %>
        </div>
    </body>
</html>
