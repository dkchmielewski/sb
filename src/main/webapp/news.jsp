<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "edu.fau.group2.model.*"
    import = "java.util.List"
    import = "edu.fau.group2.util.DBUtil"
    %>
<!DOCTYPE html>
<html>
    
<head>
    
<title>Highlights</title>
<!-- Style format for news and the navbar  -->
<style type="text/css">

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
        <h1 style="text-align: center" id="mainHeading">Keep In The Know</h1><br>
                <!-- Beginning of the News table --> 
         <table id=td1>
             <tr>
             <!-- Table headings -->
                 <th>Hot Topics</th>
                 <th>Where To Read</th>
                 <th></th>
           </tr>
               <!-- End of table headings -->
              <%
              
              DBUtil util = new DBUtil();//Connection to the Database
              List<News> list= util.getAllNews();//Creating a list to store News
            //Beginning of for loop to populate News table
              for (int index = 0; index < list.size(); index++){
            	out.print("<tr>");//Table row
            	out.print("<td>" + list.get(index).getTittle() + "</td>");//Displays news title
            	out.print("<td>" + list.get(index).getLink() + "</td>");//Displays news link
               	out.print("<td><img src=pictures/news/" + list.get(index).getNews_id()+ ".jpeg></td>");//Displays a picture of what the news entales
            	out.print("</tr>");//End table row
              }
              
              %>
      </table>
                
       <!-- End News table -->     
 </body>
</html>
