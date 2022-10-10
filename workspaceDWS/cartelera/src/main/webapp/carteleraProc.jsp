<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="modelo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String[] generos = request.getParameterValues("generos");
	String duracion=request.getParameter("duracion");
	Peticion p = new Peticion(generos, Integer.parseInt(duracion));
	%>
</body>
</html>