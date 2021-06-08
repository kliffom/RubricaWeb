<%@page import="it.rdev.rubrica.model.entities.Email"%>
<%@page import="it.rdev.rubrica.model.entities.Phone"%>
<%@page import="java.util.List"%>
<%@page import="it.rdev.rubrica.model.entities.Contact"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
	Contact contatto = (Contact) request.getAttribute("contact");
%>
<title>Informazioni per <%= contatto.getName() %> <%= contatto.getSurname() %></title>
</head>
<body>

<%
	List<Phone> phones = (List<Phone>) request.getAttribute("phones");
	List<Email> mails = (List<Email>) request.getAttribute("mails");
%>
	<h2><a href="/RubricaWeb/">Home</a></h2>
	<h1>Informazioni aggiuntive per <%= contatto.getSurname() %> <%= contatto.getName() %></h1>
	
	<table style="border: 1px solid black">
	<thead>
		<tr><td>Numeri telefono</td></tr>
	</thead>
	<tbody>
	<% int count=0;
		for(Phone num: phones) { %>
		<tr><td> <%=num.getPhone() %> </td></tr>
	<% count++;
		}
		if(count==0) {
		%>
		<tr><td>N/A</td></tr>
	<%	} %>
		
	</tbody>
	</table>
	
	<table style="border: 1px solid black">
	<thead>
		<tr><td>Email</td></tr>
	</thead>
	<tbody>
	<% 	count=0;
		for(Email mail: mails) { %>
		<tr><td> <%=mail.getEmail() %> </td></tr>
	<% count++;
		}
		if(count==0) {
		%>
		<tr><td>N/A</td></tr>
	<%	} %>
		
	</tbody>
	</table>

</body>
</html>