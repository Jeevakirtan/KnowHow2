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
        <script src="https://apis.google.com/js/platform.js" async defer></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta name="google-signin-client_id" content="700640612335-m2c3hfv4l8kcu72akjh8bjeieqigftb4.apps.googleusercontent.com">
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
        <form action='Login'>            
            <button type='submit' class="w3-bar-item w3-red w3-margin-left w3-mobile w3-button">Home</button>
        </form>
                    
        <button type='submit' onclick="document.getElementById('id02').style.display='block'" class="w3-bar-item w3-mobile w3-yellow w3-margin-left w3-button">Contribute</button>
      
        
        
    </div>
        <form action="SubCategory">
            <div class="w3-cell-row w3-display-middle w3-mobile" style="width:90%">
            <div class="w3-container w3-cell  w3-mobile w3-row-padding">
            
            
            <ul class="w3-ul  w3-card-4 w3-margin w3-mobile" >
                    <li class="w3-bar">
                        
                       <input type="submit" class="button button1 w3-mobile" name="Button" value="Android"></input><br>
                    </li>
                </ul><ul class="w3-ul  w3-card-4 w3-margin w3-mobile" >
                    <li class="w3-bar">

                        <input type="submit" class="button button3 w3-mobile" name="Button" value="IOS"></input><br>
                    </li></ul>
                    <ul class="w3-ul  w3-card-4 w3-margin w3-mobile" >
                    <li class="w3-bar">
                        
                        <input type="submit" class="button button5 w3-mobile" name="Button" value="Mechnical"></input><br>
                    </li>
                </ul>
            </div>
                <div class="w3-container w3-cell w3-margin w3-mobile">
                    <ul class="w3-ul  w3-card-4 w3-margin w3-mobile" >
                    <li class="w3-bar">
                        <input type="submit" class="button button2 w3-mobile" name="Button" value="Windows"></input><br>
                    </li></ul>
                    <ul class="w3-ul  w3-card-4 w3-margin w3-mobile" >
                    <li class="w3-bar">
                        
                        <input type="submit" class="button button5 w3-mobile" name="Button" value="Programming"></input><br>
                    </li>
                </ul>  
                   <ul class="w3-ul  w3-card-4 w3-margin w3-mobile" >
                    <li class="w3-bar">
                        <input type="submit" class="button button4 w3-mobile" name="Button" value="Others"></input><br>
                    </li></ul>
                </div></div>
            </form>
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
   
<div id="id02" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom w3-mobile" style="max-width:600px">
    <span onclick="document.getElementById('id02').style.display = 'none'" class="w3-button w3-mobile w3-xlarge w3-transparent w3-display-topright" title="Close Modal">×</span>
     <form class="w3-container w3-mobile" action="Forward">
     
                 <input type="hidden" id="uname" name="username"/>
                 <p>Sign in with google to contribute</p>
                 <div class="g-signin2 w3-mobile w3-large w3-center" data-onsuccess="onSignIn" id="myP"></div>
                 <br>
                <button class="w3-button w3-mobile w3-block w3-row w3-green w3-section w3-padding" type="submit">Submit</button>

           
     </form>

    </div></div>
    
    
</body>
</html>
