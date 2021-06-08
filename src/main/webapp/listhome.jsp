<%@page import="it.rdev.rubrica.dto.User"%>
<%@page import="it.rdev.rubrica.model.entities.Contact"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista contatti</title>
</head>
<body>
	<h2><a href="/RubricaWeb/">Home</a></h2>
	<%
		User logged = (User) request.getSession().getAttribute("USER");
		if(logged == null) {
	%>
		<p><a href="login.jsp">Login</a></p>
	<%
		}
		else {	
	%>
		<p>Utente loggato (<%= logged.getUsername() %>)</p>
		<p><a href="/RubricaWeb/LoginServlet?action=logout">Logout</a></p>
	<%
		}
	%>

	<%
		List<Contact> contatti = (List<Contact>) request.getAttribute("contatti");
	%>
	<table style="border: 1px solid black">
	<thead>
		<tr>
			<th>ID</th>
			<th>Nome</th>
			<th>Cognome</th>
			<th>Dettagli</th>
			<th>Elimina</th>
		</tr>
	</thead>

	<tbody>
	<% for(Contact con: contatti) {%>
		<tr>
			<td><%= con.getId() %></td>
			<td><%= con.getName() %></td>
			<td><%= con.getSurname() %></td>
			
			<td><a href="/RubricaWeb/ContactInformationServlet?id=<%= con.getId()%>">Dettagli</a></td>
		<% 
			if(logged == null) {
		%>
			<td><a href="login.jsp">Elimina</a></td>
		<% }
			else {
		%>
			<td><a href="">Elimina</a></td>
		<%	}
		%>
		</tr>
	<% }%>
	</tbody>
 
	</table>
	
<% 
	if(logged == null) {
%>
		<p><a href="login.jsp">Aggiungi nuovo contatto</a></p>
<% }
	else {
%>
		<p><a href="add-contact.jsp">Aggiungi nuovo contatto</a></p>
<%	}
%>
	

</body>
</html>