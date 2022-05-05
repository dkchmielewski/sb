<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import = "edu.fau.group2.util.DBUtil" %>
     <%@ page import = "edu.fau.group2.model.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%
String username = request.getParameter("username");//Gets username
String password = request.getParameter("password"); //Gets user password

int userId = DBUtil.checkUsernameAndPassword(username, password);
if(userId >= 0) {
	session.setAttribute("sessionID", userId);
	response.sendRedirect("home.jsp");
} 
else {%>
     <script type="text/javascript">
     alert('Incorrect Username or Password! Please try again.');//If user info is wrong
     window.location.href="login.jsp";//Directs back to login
    </script>
	<% 
}//End authentication
%>


</body>
</html> 