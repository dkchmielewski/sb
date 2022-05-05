<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Logout</title>

	<body>
	
            <%            
            session.invalidate(); //Invalidates user session
            %>
            <jsp:forward page="login.jsp"/> <!-- Takes user back to login page -->
     
    </body>
</html>