<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
	<h2><a href="/RubricaWeb/">Home</a></h2>
<%
	if(request.getAttribute("login-error") != null) {
%>
	<p style="color:red"> <%= request.getAttribute("login-error") %> </p>
<%  } %>
	<form method="post" action="/RubricaWeb/LoginServlet">
		<p>
			Username: <input type="text" name="username">
		</p>
		<p>
			Password: <input type="password" name="password">
		</p>
		<button type="submit">LogIn</button>
		<button type="reset">reset</button>
	</form>
</body>
</html>