<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import = "edu.fau.group2.model.User" %>
    <%@ page import = "edu.fau.group2.util.DBUtil" %>
    <%@ page import = "java.util.*" %>
<!DOCTYPE html>

<html>
    <head>
        <title>Update Product</title>
    <!-- Style format for findByIdShop and the navbar  -->
    <style>
       body{
    height: 100vh;
    justify-content: center;
    align-items: center;
    padding: 10px;
    background: linear-gradient(to bottom right, white,grey);
           
}
#new-info{
    width: 100%;
    max-width: 700px;
    background: white;
    padding: 25px 30px;
    border-radius: 5px;
    margin-left: auto;
    margin-right: auto;
           margin-top: 100px;
}
#title{
    font-size:35px;
    font-weight: 500;
    position: relative;
}
#updated-info{
    display: flex;
    flex-wrap: wrap;
    justify-content:k space-between:
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
input,#team{
    height: 35px;
    border-radius: 5px;
    border: 1px;
    border-style: solid;
    padding-left: 15px;
}
#end{
  height: 45px;
    margin: 45px 0;
}
#up{
    height: 50px;
    width: 680px;
    font-size: 18px;
    border-radius: 5px;
    background: linear-gradient(to bottom right, white,grey);
    
}
#up:hover{
     color: white;
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
            
            <%         
            Integer uid = (Integer)session.getAttribute("sessionID");
            if (uid == null) {
            	%>
            	<jsp:forward page="login.jsp"/>
            	<%
            }
            User u = DBUtil.getUserById(uid);
            String username = u.getFirstName() + " " + u.getLastName();
            %>
            
            Welcome: <%=username%>
            
        </div> 
        
         <div id="new-info">
            <div id="title">Edit Shop By ID</div>

            <form action="updateShopConfirm.jsp" method="post">
			<div id="input">
	
				<span id="info"><strong>Please provide the ID of shop item you would like to edit:</strong></span>
                 <input type="text" name="shopId" placeholder="please enter product ID">
		
	                 <span id="info"><strong>New Team Name</strong></span>
	                 <input type="text" name="newteamname" placeholder="Enter New Team Name">
	             </div>
	             <div id="input">
	                 <span id="info"><strong>New Logo</strong></span>
	                 <input type="image" name="newlogo" placeholder="Choose New Logo">
	             </div>
	              <div id="input">
	                 <span id="info"><strong>New Product</strong></span>
	                 <input type="url" name="newproducturl" placeholder="Enter New Product URL">
	             </div>
	             <div id="end">
                <input type="submit" value="Update" id="up">
            
            </div> 
            
	</form>           

</div>
 			
    </body>
</html>