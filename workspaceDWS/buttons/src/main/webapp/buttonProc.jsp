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
//Obtiene el boton que ha seleccionado
String bt = request.getParameter("bt");
%>
<%-- 
    Muestra le boton que has seleccionado
 --%>
Has pulsado el boton <%=bt%>
<%%>
</body>
</html>