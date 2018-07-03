
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.w3-btn {
margin-bottom:10px;
}
</style>
<body>
<div class="w3-container">
  <ul class="w3-ul w3-card-4">
    <li class="w3-bar">
      <button onclick="" class="w3-btn w3-white w3-border w3-round-large w3-right">button</button>
      
      <div class="w3-bar-item">
        <span class="w3-large">Mike</span><br>
        <span>Web Designer</span>
      </div>
    </li>
</ul>
</div>

</body>
<head>
        <% String Button=request.getParameter("Button");%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%=Button%></title>
        
    </head>
    <body>
        <%
            ArrayList TitleList=new ArrayList();
             Connection c=DataBase.getConnection();
            Statement st=c.createStatement();
            ResultSet rs=st.executeQuery("select * from Details where category='"+Button+"'");
            
            while(rs.next()){
                TitleList.add(rs.getString(3));
            }
            rs.close();
            st.close();
            %>
            <%
            for(int i=0;i<TitleList.size();i++)
            {
            %>
            <p><%=TitleList.get(i)%></p>
            <% }%>
            <p>end</p>
    </body>
</html>
