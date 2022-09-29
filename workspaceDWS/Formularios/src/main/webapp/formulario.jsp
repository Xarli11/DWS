<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%int num= (int)(Math.random()*10); %>
<p><a href="descargaParametro.jsp?v=mercedes&z=<%=num %>">IR A OTRA PAGINA</a></p>
<p><a href="descargaParametro.jsp?z=7&v=mercedes">IR A OTRA PAGINA</a></p>
</body>
</html>