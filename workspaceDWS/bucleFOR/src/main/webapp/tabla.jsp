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
int filas = (int)(Math.random()*5+1);
%>
<table border="2">
    <tr><td>NOMBRE</td><td>APELLIDO 1</td><td>APELLIDO 2</td></tr>
    <% 
    for(int  f=1;f<=filas;f++){
    %>
    <tr><td>NOMBRE</td><td>APELLIDO 1</td><td>APELLIDO 2</td></tr>
    <%
    }
    %>
</table>
</body>
</html>