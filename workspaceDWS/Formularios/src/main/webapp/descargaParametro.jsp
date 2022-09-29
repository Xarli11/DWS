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
String nombre = request.getParameter("v");
int n=Integer.parseInt(request.getParameter("z"));
//Integer.parseInt sirve para convertir una letra en numero
for (int i=0;i<n;i++){
%>
<p>Tu nombre es <%=nombre %> y tu dia es <%=n %></p>
<%} %>
</body>
</html>