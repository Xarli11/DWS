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
int valor = (int)(Math.random()*repositorio.datos.length);
%>
<p><a href="pasoP.jsp?v=<%=valor %>">ir a descarga2</a></p>
</body>
</html>