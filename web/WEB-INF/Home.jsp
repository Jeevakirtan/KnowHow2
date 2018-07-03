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
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <div class="w3-bar w3-light-blue  w3-border-white w3-mobile">
        <form action='Home.jsp'>            
            <button type='submit' class="w3-bar-item w3-button">Home</button>
        </form>
         <form action='Contribute'>            
            <button type='submit' class="w3-bar-item w3-button">Contribute</button>
        </form>
        
    </div>
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
                <input type="submit" class="button button1" name="Button" value="Android"></input><br>
                <input type="submit" class="button button2" name="Button" value="Windows"></input><br>
                 <input type="submit" class="button button3" name="Button" value="IOS"></input><br>
                 <input type="submit" class="button button4" name="Button" value="Programming"></input><br>
                 <input type="submit" class="button button5" name="Button" value="Mechnical"></input><br>
            </form>
            
        </div></center>
    </body>
</html>
