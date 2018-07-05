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
    <head>
        <title>Contribute</title>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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

       

</style>
 <script src="https://apis.google.com/js/platform.js" async defer></script>
         <meta name="google-signin-client_id" content="700640612335-m2c3hfv4l8kcu72akjh8bjeieqigftb4.apps.googleusercontent.com">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        
    </head>
<body>
   
    <script type="text/javascript">
        function onSignIn(googleUser){
            var profile=googleUser.getBasicProfile();
           
            var email="";
                    email=profile.getEmail();
            document.getElementById("uname").value=email;
            
        }
</script>

<script>
    function myFunction(){
        gapi.auth2.getAuthInstance().disconnect();
        location.reload();
    }
   </script>
<body bgcolor="#F9FCFC">

<div class="w3-bar w3-light-blue w3-display-top w3-border-white w3-margin w3-mobile" style="width:100%">
    <form action='Login' method="get">            
            <button type='submit' class="w3-bar-item  w3-red w3-margin-left w3-button">Home</button>
        </form>
       <div class="g-signin2 w3-large w3-right" data-onsuccess="onSignIn" id="myP"></div>
    </div>
<div class="w3-container w3-display-middle w3-margin-top w3-padding-16 w3-margin">
    <form action="Insert" method="post" name="submitform" >
        <input type="hidden" id="uname" name="username"/>
    <label for="Title">Title</label>
    <input type="text" id="fname" name="Title"  placeholder="Enter Your Title.." required>

    
    <label for="Category">Category</label>
    <%
        ArrayList categoryList = new ArrayList();
            Connection c = DataBase.getConnection();
            Statement st = c.createStatement();
            ResultSet rs = st.executeQuery("select * from CATEGORY");

            while (rs.next()) {
                categoryList.add(rs.getString(1));
            }
            rs.close();
            st.close();
        %>
    <select id="categoryChosen" name="categoryChosen"  required>
        <%for(int i=0;i<categoryList.size();i++)
        {
            
%>
<option value="<%=categoryList.get(i) %>"><%=categoryList.get(i) %></option>
      <% }%>
    </select>
    <p>!!!*for next steps alone press enter </p>
  <textarea id="content" name="content" placeholder="Write the procedure.." style="height:300px" required></textarea>
  <input type="submit" class="w3-green" value="submit" ></button>
  </form>
</div>

</body>
</html>
