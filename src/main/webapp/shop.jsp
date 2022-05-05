<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "edu.fau.group2.model.*"
    import = "java.util.List"
    import = "edu.fau.group2.util.DBUtil"
    %>
   
    
<!DOCTYPE html>
<html>
    <head>
    <title> Shop Your Team</title>
    <!-- Style format for shop and the navbar  -->
        <style>
            body{
            display: grid;
            justify-content: center;
            background-color: linear-gradient(to bottom right, white,grey);
            }
            table{
            border-collapse:collapse;
            background-color: white;
            text-align:left;
            }
            th{
            backgroud-color: grey;
            padding:0.75rem 2rem;
            }
            td{
            padding;
            }
            tr:nth-child(even){
            background-color: light grey;
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
          //Authentication
            Integer uid = (Integer)session.getAttribute("sessionID");
            if (uid == null) {
            	%>
            	<jsp:forward page="login.jsp"/>
            	<%
            }//End of authentication
          //Displays Welcome + user's first and last name in the end of the navbar once the user is loged in
            User u = DBUtil.getUserById(uid);
            String username = u.getFirstName() + " " + u.getLastName();
            %>
            
            Welcome: <%=username%>
            
        </div>
        
        <h1 style="text-align: center" id="mainHeading">Shop Your Team's Gear!</h1><br>
            <!-- Beginning of the Shop table -->      
      <table id=td1>
             <tr>
             <!-- Table headings -->
                 <th>Team</th>
                 <th>Team Logo</th>
                 <th>Product</th>
              </tr>
               <!-- End of table headings --> 
              <%
              
              DBUtil util = new DBUtil();//Connection to the Database
              List<Shop> list= util.getAllShop();//Creating a list to store Shop
            //Beginning of for loop to populate Shop table
              for (int index = 0; index < list.size(); index++){
            	  out.print("<tr>");//Table row
            	  out.print("<td>" + list.get(index).getTeam_name() + "</td>");//Displays teams name
            	  out.print("<td><img src=pictures/shop/" + list.get(index).getShop_id()+ ".gif></td>");//Displays team logo
            	  out.print("<td>" + list.get(index).getProduct() + "</td>");//Displays shop link
            	  out.print("</tr>");//End table row
              }//End of for loop
              
              %>
      </table>
      <!-- End of Shop table -->
      <%
      if(u.getUserName().equals("admin")) {%>
    	  <a href="addShop.jsp">Add Shop Item</a><!-- Admin can add shop items -->
    	  <a href="findByIdShop.jsp">Update Shop Item</a><!-- Admin can update items on shop page -->
    	  <a href="deleteShop.jsp">Delete Shop Item</a><!-- Admin can delete any shop item -->
      <%}
      %>
    
        </body>
    </head>
</html>



