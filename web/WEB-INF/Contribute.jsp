<%-- 
    Document   : Contribute
    Created on : 04-Jul-2018, 00:35:10
    Author     : Jeevi
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Servs.DataBase"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

div {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}
</style>
<body>

    <p>***Fill all the fields***</p>

<div>
    <form action="Insert" method="post">
    <label for="Title">Title</label>
    <input type="text" id="fname" name="Title" placeholder="Enter Your Title..">

    
    <label for="Category">Category</label>
    <%
        ArrayList categoryList = new ArrayList();
            Connection c = DataBase.getConnection();
            Statement st = c.createStatement();
            ResultSet rs = st.executeQuery("select distinct category from Details");

            while (rs.next()) {
                categoryList.add(rs.getString(1));
            }
            rs.close();
            st.close();
        %>
    <select id="categoryChosen" name="categoryChosen">
        <%for(int i=0;i<categoryList.size();i++)
        {
            
%>
<option value="<%=categoryList.get(i) %>"><%=categoryList.get(i) %></option>
      <% }%>
    </select>
  <textarea id="content" name="content" placeholder="Write the procedure.." style="height:200px"></textarea>
    <input type="submit" value="Submit">
  </form>
</div>

</body>
</html>
