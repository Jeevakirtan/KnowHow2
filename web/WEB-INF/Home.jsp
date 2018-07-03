<%-- 
    Document   : Home
    Created on : 02-Jul-2018, 21:18:36
    Author     : Jeevi
--%>

<%@page import="java.io.IOException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        
        <style>
        div {
    
              
             border: 25px ;
             padding: 25px;
              margin: 100px;
            }
            .button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 16px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 30px 45px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
    width: 50%;
    height: 60px;
}

.button1 {
    background-color: white; 
    color: black; 
    border: 2px solid #4CAF50;
}

.button1:hover {
    background-color: #4CAF50;
    color: white;
}

.button2 {
    background-color: white; 
    color: black; 
    border: 2px solid #008CBA;
}

.button2:hover {
    background-color: #008CBA;
    color: white;
}

.button3 {
    background-color: white; 
    color: black; 
    border: 2px solid #f44336;
}

.button3:hover {
    background-color: #f44336;
    color: white;
}

.button4 {
    background-color: white;
    color: black;
    border: 2px solid #e7e7e7;
}

.button4:hover {background-color: #e7e7e7;}

.button5 {
    background-color: white;
    color: black;
    border: 2px solid #555555;
}

.button5:hover {
    background-color: #555555;
    color: white;
}
</style>

    </head>
    <body>
    <center><div> 
            <form action="SubCategory">
                <input type="submit" class="button button1" name="Button" value="ANDROID"></button><br>
            </form>
            <button class="button button2" on>Blue</button><br>
    <button class="button button3">Red</button><br>
    <button class="button button4">Gray</button><br>
    <button class="button button5">Black</button><br>
        </div></center>
    </body>
</html>
