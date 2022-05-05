<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "edu.fau.group2.model.*"
    import = "java.util.List"
    import = "edu.fau.group2.util.DBUtil"
    %>
    
<!DOCTYPE html>

<html>
    <head>
        <title>Registration Form</title>
        <!-- Style format for addshop and the navbar  -->
    <style>
    
   
        body{
    height: 100vh;
    justify-content: center;
    align-items: center;
    padding: 10px;
    background: linear-gradient(to bottom right, white,grey);
}
#holder{
    width: 100%;
    max-width: 700px;
    margin-left: auto;
    margin-right: auto;
    background: white;
    padding: 25px 30px;
    border-radius: 5px;
    margin-top: 20px
}
#title{
    font-size:35px;
    font-weight: 500;
    position: relative;
}
#client-info{
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between:
}
#input{
    width:200px;
    margin: 20px 0 12px 0;
}
#details{
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
#rmale,#rfemale,#rpnts{
    display: inline-block;
    justify-content: space-between;
    
}
#end{
  height: 45px;
    margin: 45px 0;
}
#sr{
    height: 50px;
    width: 680px;
    font-size: 18px;
    border-radius: 5px;
    background: linear-gradient(to bottom right, white,grey);
    
}
#sr:hover{
     color: white;
}
#member{
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
    
    <body>
        <!-- Admin can add items to shop.jsp -->
     <div id="holder">
        <div id="title">Add Shop Item</div>
        <form action="addShopConfirm.jsp" method="post">	<!-- confirmation page -->
            <div id="client-info">
                <div id="input">         
                
                    <span id="details"><strong>Team</strong></span>
                    <input type="text" name="team" placeholder="Enter Team Name" required>
                </div>
            <div id="input">
                    <span id="details"><strong>Team Logo</strong></span>
                    <input type="image" name="logo" placeholder="Add Logo">
                </div>
            <div id="input">
                    <span id="details"><strong>Product Link</strong></span>
                    <input type="url" name="link" placeholder="Enter Link" required>
                </div>
                
            <div id="end">
                <input type="submit" value="Add Shop Item" id="sr">
            </div>
            </form>
         
            </div>
         
    </body>

</html>