<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "edu.fau.group2.util.DBUtil"
    import = "edu.fau.group2.model.*"
    %>

    
<!DOCTYPE html>
<html>
    <head>
        <title>SuperBowl LVI</title>
        <!-- Style format for home and the navbar  -->
        <link rel="stylesheet" href="styles.css">
        <!-- End of style format -->
    </head>
    <body>
    <div class="page">
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
          //Authentication 
            Integer uid = (Integer)session.getAttribute("sessionID");
            if (uid == null) {
            	%>
            	<jsp:forward page="login.jsp"/>
            	<%
            }//end of Authentication 
            
          //Displays Welcome + user's first and last name in the end of the navbar once the user is loged in
            User u = DBUtil.getUserById(uid);
            String username = u.getFirstName() + " " + u.getLastName();
            %>
            
            Welcome: <%=username%>
            
            <%
      if(u.getUserName().equals("admin")) {%>
    	  <a href="deleteUser.jsp">Delete User</a>
      <%}
      %>
            
        </div>
        
        <h1>WHO IS GOING TO THE SUPER BOWL?</h1>
        
         <img src="pictures/home/nflbrackets.png" class="image1">
        
        <div class="container">
            
            <div class="poll">
            <h1>POLL</h1>
        
            <h2>Bengals vs Rams</h2>
        
            <form action="thankyou.jsp">   
                <input type="radio" name="radClass" value="bengals" checked>Bengals<br>
                <input type="radio" name="radClass" value="rams">Rams<br>           
                <input type="submit" value="Vote">
            </form>
            </div>
            
            <div class="news">
            <h1>NEWS</h1>
                <a href="https://www.nfl.com/news/raiders -hiring-patrick-graham-as-defensive-coordinator" >Raiders hiring Patrick Graham as defensive coordinator<br><br><img id="news1" align="left" src="pictures/home/news1.png" /></a>
            </div>
        </div>
    </div>        
    
    </body>
</html> 