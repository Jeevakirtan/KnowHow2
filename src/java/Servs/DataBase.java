/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servs;

import static Servs.DBInfo.*;
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
                String dbURL = DBInfo.getDBURL();
		String user = DBInfo.getUser();
		String password = DBInfo.getPassword();
              Class.forName(DBInfo.getDriver());
              c=DriverManager.getConnection(dbURL, user, password);
             //Statement s=c.createStatement();
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
    public static Connection getConnection(){
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

