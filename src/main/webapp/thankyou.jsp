<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "edu.fau.group2.model.User" %>
    <%@ page import = "edu.fau.group2.util.DBUtil" %>
<!DOCTYPE html>
<html>
    <head>
    <title>Appreciation page</title>
    </head>
    <!-- Style format for thankyou and the navbar  -->
        <style>
  

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
            
            <%             
          //Authentication admin
            Integer uid = (Integer)session.getAttribute("sessionID");
            if (uid == null) {
            	%>
            	<jsp:forward page="login.jsp"/>
            	<%
            }//End authentication
            User u = DBUtil.getUserById(uid);
            String username = u.getFirstName() + " " + u.getLastName();
            %>
            
            Welcome: <%=username%>
            
        </div>
        </div>
        <h1 style="text-align: center">Thank you!</h1> <!-- Logged in -->

        </body>
</html>
