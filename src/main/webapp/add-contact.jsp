<%@page import="it.rdev.rubrica.dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Aggiunta nuovo contatto</title>
</head>
<body>

	<h2><a href="/RubricaWeb/">Home</a></h2>
	
	<%
		User logged = (User) request.getSession().getAttribute("USER");
		if(logged == null) {
	%>
		<p style="color:red">Devi essere loggato per inserire un contatto.</p>
		<p><a href="login.jsp">Login</a></p>
	<%
		}
		else {	
	%>
		<!-- Se l'utente è loggato allora mostra il form di inserimento -->
		<form method="post" action="/RubricaWeb/AddContactServlet">
		<p>
			Name: <input type="text" name="name" placeholder="Insert name here.">
		</p>
		<p>
			Surname: <input type="text" name="surname" placeholder="Insert surname here.">
		</p>
		<button type="submit">Insert</button>
		<button type="reset">Reset</button>
	</form>
	<%
		}
	%>

</body>
</html>