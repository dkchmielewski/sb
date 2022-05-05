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
        <!-- Style format for registration and the navbar  -->
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
        
     <div id="holder">
        <div id="title">Registration</div><!-- Heading -->
        <form action="confirmation.jsp" method="post">	<!-- Once done takes user to confirmation page -->
            <div id="client-info">
                <div id="input">         
                <!-- Entering user information -->
                    <span id="details"><strong>First Name</strong></span>
                    <input type="text" name="fname" placeholder="Enter Your First Name" required>
                </div>
            <div id="input">
                    <span id="details"><strong>Last Name</strong></span>
                    <input type="text" name="lname" placeholder="Enter Your Last Name" required>
                </div>
            <div id="input">
                    <span id="details"><strong>Email</strong></span>
                    <input type="email" name="email" placeholder="Enter Your Email" required>
                </div>
                <div id="input">
                    <span id="details"><strong>Create Username</strong></span>
                    <input type="text" name="username" placeholder="Enter Username" required>
                </div>
            <div id="input">
                    <span id="details"><strong>Password</strong></span>
                    <input type="password" name="password" placeholder="Create Password" required>
                </div>
            <div id="input">
                    <span id="details"><strong>Confirm Password</strong></span>
                    <input type="password" placeholder="Confirm New Password" required>
                </div>
                <div id="input">
                    <span id="details"><strong>Mobile Phone number</strong></span>
                    <input type="text" name="phone" placeholder="Enter Phone Number">
                </div>
                 <div id="input">
                    <span id="details"><strong>Date Of Birth</strong></span>
                    <input type="date" name="dob" required>
                </div>                
   
                <div id="input">
                <span id="details"><strong>Select Favorite Football Team</strong></span>
                <select id="team" required>               
            <option value="arizonacardinals" id="teamid">Arizon Cardinals</option>
            <option value="atlantafalcons" id="teamid">Atlanta Falcons</option>
            <option value="baltimoreravens" id="teamid">Baltimore Ravens</option>
            <option value="buffalobills" id="teamid">Buffalo Bills</option>
            <option value="carolinapanthers" id="teamid">Carolina Panthers</option>
            <option value="chicagobears" id="teamid">Chicago Bears</option>
            <option value="cincinnatibengals" id="teamid">Cincinnati Bengals</option>
            <option value="clevelandbrowns" id="teamid">Cleveland Browns</option>
            <option value="dallascowboys" id="teamid">Dallas Cowboys</option>
            <option value="denverbroncos" id="teamid">Denver Broncos</option>
            <option value="detroitlions" id="teamid">Detroit Lions</option>
            <option value="greenbaypackers" id="teamid">Green Bay Packers</option>
            <option value="houstontexans" id="teamid">Houston Texans</option>
            <option value="indianapoliscolts" id="teamid">Indianapolis Colts</option>
            <option value="jacksonvillejaguars" id="teamid">Jacksonville Jaguars</option>
            <option value="kansascitychiefs" id="teamid">Kansas City Chiefs</option>
            <option value="lasvegasraiders" id="teamid">Las Vegas Raiders</option>
            <option value="losangeleschargers" id="teamid">Los Angeles Chargers</option>
            <option value="losangelesrams" id="teamid">Los Angeles Rams</option>
            <option value="miamidolphins" id="teamid">Miami Dolphins</option>
            <option value="minnesotavikings" id="teamid">Minnesota Vikings</option>
            <option value="newenglandpatriots" id="teamid">New England Patriots</option>
            <option value="neworleanssaints" id="teamid">New Orleans Saints</option>          
            <option value="newyorkgiants" id="teamid">New York Giants</option>
            <option value="newyorkjets" id="teamid">New York Jets</option>
            <option value="philadelphiaeagles" id="teamid">Philadelphia Eagles</option>
            <option value="pittsburghsteelers" id="teamid">Pittsburgh Steelers</option>
            <option value="sanfrancisco49ers" id="teamid">San Francisco 49ers</option>
            <option value="seattleseahawks" id="teamid">Seattle Seahawks</option>
            <option value="tampabaybuccaneers" id="teamid">Tampa Bay Buccaneers</option>
            <option value="tennesseetitans" id="teamid">Tennessee Titans</option>
            <option value="washingtoncommanders" id="teamid">Washington Commanders</option>
        </select>            
        </div>
          
            </div>
            
            <div id="genderinfo">
                <span id="gender-list"><strong>Gender</strong></span><br>
                <input type="radio" name="gender" value="Male" id="rmale"/>Male
                <input type="radio" name="gender" value="Female" id="rfemale"/>Female
                <input type="radio" name="gender" value="Prefer Not To Say" id="rpnts"/>Prefer Not To Say<br> 
            </div>
            <div id="end">
                <input type="submit" value="Register" id="sr">
            </div>
            </form>
          <!-- Go to login page if user is already a member  -->
            <form action="login.jsp">
            Already a Member? 
            <input type="submit" value="Login" id="member">
            </form> 

            </div>
         
    </body>

</html>