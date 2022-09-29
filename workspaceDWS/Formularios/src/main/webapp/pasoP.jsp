<!-- Esta pagina va ligada con usoInterfaz.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="modelo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
int v = Integer.parseInt(request.getParameter("v"));
%>
<p>Tu te llamas <%=repositorio.datos[v] %></p>
</body>
</html>