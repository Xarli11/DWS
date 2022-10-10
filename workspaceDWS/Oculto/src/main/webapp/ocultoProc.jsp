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
	String nombre=request.getParameter("nombre").trim();
	String dato=request.getParameter("dato").trim();
%>
<form action="ocultoProc2.jsp" method="post">
<p><%=nombre %> tu nº de la suerte es <%=dato %></p>
<input type= "hidden" name= "nombre" value="<%=nombre %>">
<p><input type = "text" name = "apellido"></p>
<input type= "hidden" name= "dato" value="<%=dato%>">

<p><input type="submit" name="enviar" value="enviar datos"></p>
</form>
</body>
</html>