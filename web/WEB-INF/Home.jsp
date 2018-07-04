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
        <style>
    
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

    
    <div class="w3-bar w3-light-blue  w3-border-white w3-mobile" style="width:auto">
        <form action='Home.jsp'>            
            <button type='submit' class="w3-bar-item w3-button">Home</button>
        </form>
        <form action='Contribute'>            
            <button type='submit' class="w3-bar-item w3-button">Contribute</button>
        </form>
        
        
    </div>
        <form action="SubCategory">
            <div class="w3-cell-row w3-display-middle" style="width:90%">
            <div class="w3-container w3-cell  w3-mobile w3-row-padding">
            
            
            <ul class="w3-ul  w3-card-4 w3-margin w3-mobile" >
                    <li class="w3-bar">
                        
                       <input type="submit" class="button button1" name="Button" value="Android"></input><br>
                    </li>
                </ul><ul class="w3-ul  w3-card-4 w3-margin w3-mobile" >
                    <li class="w3-bar">

                        <input type="submit" class="button button3" name="Button" value="IOS"></input><br>
                    </li></ul>
                    <ul class="w3-ul  w3-card-4 w3-margin w3-mobile" >
                    <li class="w3-bar">
                        
                        <input type="submit" class="button button5" name="Button" value="Mechnical"></input><br>
                    </li>
                </ul>
            </div>
                <div class="w3-container w3-cell w3-margin w3-mobile">
                    <ul class="w3-ul  w3-card-4 w3-margin w3-mobile" >
                    <li class="w3-bar">
                        <input type="submit" class="button button2" name="Button" value="Windows"></input><br>
                    </li></ul>
                    </ul><ul class="w3-ul  w3-card-4 w3-margin w3-mobile" >
                    <li class="w3-bar">
                        
                        <input type="submit" class="button button4" name="Button" value="Programming"></input><br>
                    </li>
                </ul>  
                </div></div>
            </form>
</head>
<body>
<div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom w3-mobile" style="max-width:600px">
    <span onclick="document.getElementById('id01').style.display = 'none'" class="w3-button w3-xlarge w3-transparent w3-display-topright" title="Close Modal">×</span>
     <form class="w3-container" action="/action_page.php">
        <div id="login" class="w3-section">
                <label><b>Username</b></label>
                <input class="w3-input w3-border " type="text" placeholder="Enter Username" name="usrname" required>
                <label><b>Password</b></label>
                <input class="w3-input w3-border" type="text" placeholder="Enter Password" name="psw" required>

                <button class="w3-button w3-block w3-row w3-green w3-section w3-padding" type="submit">SignIn</button>
                

                <button onclick="document.getElementById('id01').style.display = 'none'" type="button" class="w3-button w3-red">Cancel</button>         
                <span class="w3-right w3-padding w3-hide-small">Forgot <a href="#">password?</a></span>
            </div>
            
        </form>
</div>
    </div>
<div id="id02" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom w3-mobile" style="max-width:600px">
    <span onclick="document.getElementById('id02').style.display = 'none'" class="w3-button w3-xlarge w3-transparent w3-display-topright" title="Close Modal">×</span>
     <form class="w3-container" action="/action_page.php">
       <div id="SignUp" class="w3-section">
                <label><b>Username</b></label>
                <input class="w3-input w3-border " type="text" placeholder="Enter Username" name="usrname" required>
                <label><b>Password</b></label>
                <input class="w3-input w3-border" type="text" placeholder="Enter Password" name="psw" required>
                <label><b>Mobile Number</b></label>
                <input class="w3-input w3-border" type="text" placeholder="Enter Mobile Number" name="MobileNumber" required>
                <button class="w3-button w3-block w3-row w3-green w3-section w3-padding" type="submit">Submit</button>
</div>
           
     </form>

    </div></div>
</body>
</html>
