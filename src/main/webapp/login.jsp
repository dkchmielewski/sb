<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        <!-- Style format for login and the navbar  -->
    <style>
        
        body{
    height: 100vh;
    justify-content: center;
    align-items: center;
    padding: 10px;
    background: linear-gradient(to bottom right, white,grey);
}
#login{
    width: 100%;
    max-width: 700px;
    background: white;
    padding: 25px 30px;
    border-radius: 5px;
    margin-top: 100px;
    margin-left: auto;
    margin-right: auto;
}
#title{
    font-size:35px;
    font-weight: 500;
    position: relative;
}
#login-info{
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between:
}
#input{
    width:200px;
    margin: 20px 0 12px 0;
}
#info{
    font-weight: 500;
    margin-bottom: 5px;
    display: block;
}
input{
    height: 35px;
    border-radius: 5px;
    border: 1px;
    border-style: solid;
    padding-left: 15px;
}
#end{
  height: 45px;
    margin: 15px 0;
}
#lo{
    height: 50px;
    width: 150px;
    font-size: 18px;
    border-radius: 5px;
    background: linear-gradient(to bottom right, white,grey);
    
}
#lo:hover{
     color: white;
}
#new{
    font-size: 15px;
    background: linear-gradient(to bottom right, white,grey);
}
        
        .navbar {
    background-color: darkgrey;
    overflow: hidden;
    width: 100%;
    text-align: center;
    padding-top: 10px;
    padding-bottom: 10px;
    max-width: 2000px;
    min-width: 1100px;
}

.navbar a {
    color:aliceblue;
    padding: 12px 18px;
    font-size: 15px;

    text-align: center;
    font-family:sans-serif;
}

.navbar a:hover {
    background-color: cornflowerblue;
    color: black;
}
        </style>
        <!-- End of style format -->
    </head>

    
    <body>
    <!-- This navigation bar displays all the pages in the website --> 
            <div class="navbar">
                        <a href="home.jsp">Home</a><!-- Takes you directly to the home page once logged in -->
            <a href="schedule.jsp">Schedule</a>
            <a href="highlights.jsp">Highlights</a><!-- Takes you directly to the Highlights page once logged in -->
            <a href="shop.jsp">Shop Team</a> <!-- Takes you directly to the Shop Team page once logged in -->
            <a href="news.jsp">News</a><!-- Takes user directly to the News page once logged in -->
            <a href="registration.jsp">Register</a><!-- Takes user directly to the Register page to create a profile -->
            <a href="updateUser.jsp">Update Profile</a><!-- Takes user directly to Update Profile to change any user info once logged in-->
            <a href="login.jsp">Login</a><!-- Takes you directly to the schedule page once logged in -->
            <a href="logout.jsp">Logout</a><!-- Takes user directly Back to the home page ending the user session through logout.jsp-->
            
        </div> 
        
        
<div id="login">
    <div id="title">Login</div>
    <form action="validate.jsp" method="post"><!-- After user enters login info it is sent to validate.jsp for validation -->
        <div id="login-info">
            <div id="input"><!-- User enters login info -->
                <span id="info"><strong>USERNAME</strong></span>
                <input type="text" name="username" placeholder="Enter Username" required>
            </div>
            <div id="input">
                <span id="info"><strong>PASSWORD</strong></span>
                <input type="password" name="password" placeholder="Enter Password" required>
            </div>    
        </div>
        <div id="end">
            <input type="submit" value="Login" id="lo">
        </div>
        </form>
        <!-- Registration page link -->
        <form action="registration.jsp">
        Not Yet A Member? <input type="submit" value="Register" id="new"> It's Free!
    </form>
</div>        
    </body>
</html>