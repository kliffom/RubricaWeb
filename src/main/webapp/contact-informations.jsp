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

</body>
</html>