<%-- 
    Document   : SubCategory
    Created on : 02-Jul-2018, 22:27:00
    Author     : Jeevi
--%>

<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"
        import="Servs.DataBase"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <% String Button = request.getParameter("Button");%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title><%=Button%></title>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <style>
            .w3-btn {
                margin-bottom:10px;
            }
        </style>
        
    </head>
    <body>
        <div class="w3-bar w3-light-blue  w3-border-white w3-mobile" style="width:auto">
        <form action='Home.jsp'>            
            <button type='submit' class="w3-bar-item w3-button">Home</button>
        </form>
       
    </div>
        <form action="SecondForward"style="background">
        <%
            ArrayList TitleList = new ArrayList();
            Connection c = DataBase.getConnection();
            Statement st = c.createStatement();
            ResultSet rs = st.executeQuery("select * from Details where category='" + Button + "'");

            while (rs.next()) {
                TitleList.add(rs.getString(4));
            }
            rs.close();
            st.close();
            int num=TitleList.size()/2;
        %>
        <div class="w3-cell-row" style="width:90%">
            <div class="w3-container w3-cell  w3-mobile">
                <%
                    for (int i = 0; i < num; i++) {
                %>

                <ul class="w3-ul  w3-card-4 w3-margin w3-mobile" >
                    <li class="w3-bar">


                        <div class="w3-bar-item">
                            <span class="w3-large"><%=TitleList.get(i)%></span><br>
                            <span class="w3-margin">--</span>
                        </div>
                        <Button type="submit" class="w3-btn w3-white w3-border w3-round-large w3-right"  name="Button" value="<%=TitleList.get(i)%>">View</Button>
                    </li>
                </ul>


                <% }%>
            </div>
            <div class="w3-container w3-cell w3-margin w3-mobile">
                <%
                    for (int i = num; i < TitleList.size(); i++) {
                %>

              
                <ul class="w3-ul  w3-card-4 w3-margin w3-mobile" >
                    <li class="w3-bar">


                        <div class="w3-bar-item">
                            <span class="w3-large"><%=TitleList.get(i)%></span><br>
                            <span class="w3-margin">--</span>
                        </div>
                        <Button type="submit" class="w3-btn w3-white w3-border w3-round-large w3-right"  name="Button" value="<%=TitleList.get(i)%>">View</Button>
                    </li>
                </ul>  

                <% }%>

            </div>
        </div>
        </form>
    </body>
</html>

