/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSetMetaData;
import java.sql.Statement;

/**
 *
 * @author Jeevi
 */
public class DataBase {
    static DataBase db;
    static Connection c;
    private DataBase(){
        try{
              Class.forName("org.apache.derby.jdbc.ClientDriver");
              c=DriverManager.getConnection("jdbc:derby://localhost:1527/Details","abc","abc");
             // Statement s=c.createStatement();
             // s.execute("create table Details(username varchar(20),password varchar(20),category varchar(20),title varchar(20),content varchar(850))");
              
        }catch(Exception e){
            System.out.println(e);
        }
    }
    protected static DataBase getDB(){
        if(db==null){
            db=new DataBase();
        }
        return db;
    }
   /* public static void main(String[] args) {
        getDB();
        
    }*/
    protected static Connection getConnection(){
        getDB();
        return c;
    }
    
}/*
ResultSet rs =stmt.executeQuery("select * from Bank ");
            ResultSetMetaData md=rs.getMetaData();
            System.out.println(md.getColumnCount()+"-> "+md.getColumnName(2)+" ");
            while(rs.next())
            {
                System.out.println(rs.getString(1)+" "+rs.getString(2));
}
*/
/*

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
</html>

*/