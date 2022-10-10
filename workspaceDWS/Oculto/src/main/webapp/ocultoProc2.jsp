<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String nombre = request.getParameter("nombre").trim();
String apellido = request.getParameter("apellido").trim();
String dato = request.getParameter("dato").trim();
%>
<p><%=nombre %>y <%=apellido %> tu nº de la suerte sigue siendo <%=dato %></p>
</body>
</html>