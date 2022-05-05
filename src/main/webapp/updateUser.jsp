<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import = "edu.fau.group2.model.User" %>
    <%@ page import = "edu.fau.group2.util.DBUtil" %>
<!DOCTYPE html>
<!-- 
This page updates user's information and sends new data to updateConfirm page.
 -->
<html>
    <head>
        <title>Update User Profile</title>
    <!-- Style format for updateUser and the navbar  -->
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
            <div id="title">Update Your Profile</div>
     <form action="updateConfirm.jsp" method="post">
         <div id="updated-info">
            <div id="input">
                 <span id="info"><strong>New Email</strong></span>
                 <input type="text" name="newemail" placeholder="Enter New Email">
             </div>
             <div id="input">
                 <span id="info"><strong>Old Password</strong></span>
                 <input type="password" placeholder="Enter Old Password">
             </div>
             <div id="input">
                 <span id="info"><strong>New Password</strong></span>
                 <input type="password" name="newpassword" placeholder="Enter New Password">
             </div>
             <div id="input">
                 <span id="info"><strong>Confirm New Password</strong></span>
                 <input type="password" placeholder="Confirm New Password">
             </div>
              <div id="input">
                 <span id="info"><strong>New Phone Number</strong></span>
                 <input type="text" name="newphone" placeholder="Enter New Phone Number">
             </div>
             <div id="input">
                <span id="details"><strong>Select New Favorite Football Team...It's okay it happens :)</strong></span>
                <select id="team">
            <option value="arizonacardinals">Arizon Cardinals</option>
            <option value="atlantafalcons">Atlanta Falcons</option>
            <option value="baltimoreravens">Baltimore Ravens</option>
            <option value="buffalobills">Buffalo Bills</option>
            <option value="carolinapanthers">Carolina Panthers</option>
            <option value="chicagobears">Chicago Bears</option>
            <option value="cincinnatibengals">Cincinnati Bengals</option>
            <option value="clevelandbrowns">Cleveland Browns</option>
            <option value="dallascowboys">Dallas Cowboys</option>
            <option value="denverbroncos">Denver Broncos</option>
            <option value="detroitlions">Detroit Lions</option>
            <option value="greenbaypackers">Green Bay Packers</option>
            <option value="houstontexans">Houston Texans</option>
            <option value="indianapoliscolts">Indianapolis Colts</option>
            <option value="jacksonvillejaguars">Jacksonville Jaguars</option>
            <option value="kansascitychiefs">Kansas City Chiefs</option>
            <option value="lasvegasraiders">Las Vegas Raiders</option>
            <option value="losangeleschargers">Los Angeles Chargers</option>
            <option value="losangelesrams">Los Angeles Rams</option>
            <option value="miamidolphins">Miami Dolphins</option>
            <option value="minnesotavikings">Minnesota Vikings</option>
            <option value="newenglandpatriots">New England Patriots</option>
            <option value="neworleanssaints">New Orleans Saints</option>          
            <option value="newyorkgiants">New York Giants</option>
            <option value="newyorkjets">New York Jets</option>
            <option value="philadelphiaeagles">Philadelphia Eagles</option>
            <option value="pittsburghsteelers">Pittsburgh Steelers</option>
            <option value="sanfrancisco49ers">San Francisco 49ers</option>
            <option value="seattleseahawks">Seattle Seahawks</option>
            <option value="tampabaybuccaneers">Tampa Bay Buccaneers</option>
            <option value="tennesseetitans">Tennessee Titans</option>
            <option value="washingtoncommanders">Washington Commanders</option>
                    
                    
        </select>            
        </div> 
         
         </div>
         <div id="end">
                <input type="submit" value="Update" id="up">
            
            </div> 
     </form>       
</div>
        
        
    </body>
</html>