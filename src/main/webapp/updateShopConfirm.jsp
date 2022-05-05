<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "edu.fau.group2.model.Shop" %>
    <%@ page import = "edu.fau.group2.model.User" %>
    <%@ page import = "edu.fau.group2.util.DBUtil" %>
    <%@ page import = "java.util.Date" %>
    <%@ page import = "java.text.SimpleDateFormat" %>
    
<!DOCTYPE html>
<!-- 
This page takes data from updateShop and notifies admin that item has been updated
 -->
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirmation</title>
<!-- Style format for updateShopConfirm and the navbar  -->
<style>
            body {
                background-color: white;
                overflow: auto;
                font-weight: bold;
                margin-left: auto;
                margin-right: auto;
            }
            #News {
                background-color: skyblue;
                text-align: center;
                border-style: solid;
                width: 200px;
                border-radius: 100px;
            }
            h1 {
                font-weight: bold;
                color: black;
                font-size: 18px;
             }
            .Article {
                text-align: center;
                display: flex;
                background-size: cover;
                background-repeat: no-repeat;
                padding: 10px;
                flex-direction: row;
                justify-content: left;
                align-items: center;
                float: left;
                padding: 10px;
                border: 1px double black;
                background-color:antiquewhite;
                
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

	<%

		int shopId = Integer.parseInt(request.getParameter("shopId"));
		Shop s = DBUtil.getShopById(shopId);
	
		out.print("You will modify item with ID: " + shopId);

		//getting updated data

		String teamName = request.getParameter("newteamname");
		String logo = request.getParameter("newlogo");
		String productUrl = request.getParameter("newproducturl");
		
		s = new Shop(teamName, logo, productUrl, shopId);
		
		boolean didUpdate = DBUtil.update(s);
		
		if (didUpdate){
			out.print("<h2>Item updated!</h2>");
			
		}
		else if (didUpdate==false){
			out.print("<h2>Id " + s.getShop_id() + " does not exist! "+ "</h2>");
		}
		else {
			out.print("<h2>Error updating item, try again</h2>");
		}
	%>
	
	<h1>Thank you <%=s.getShop_id() %> UPDATED! </h1>
	
</body>
</html>