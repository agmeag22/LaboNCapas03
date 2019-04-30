<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.Date"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table>
	<tr>
		<th>Nombre</th>
		<th>Apellido</th>
		<th>Fecha de Nacimiento</th>
		<th>Carrera</th>
		<th>Experiencia</th>
	</tr>
	<td>${student.name}</td>
	<td>${student.lastName}</td>
	<td>${student.bDate}</td>  
	<td>${student.career}</td>
	<td>${student.experience}</td>
	</table>
	<c:set var = "fecha" scope = "session" value = "<%=new Date()%>"/>
	<fmt:formatDate type="date" value="${fecha}" pattern="MM/dd/yyyy" var="fecha"/>
	<p>${fecha}</p>
      <c:if test = "${fecha==student.bDate}">
         <p>Feliz Cumpleaños</p>
      </c:if> 
</body>
</html>