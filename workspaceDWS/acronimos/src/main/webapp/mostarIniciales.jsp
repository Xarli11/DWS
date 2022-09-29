<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%-- Importa el paquete acronimos que incluye el objeto Nombre --%>
    <%@ page import="acronimos.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
    /*
        * 1. Crear un objeto de la clase Nombre
    */

	String nombre1 = request.getParameter("name");
    Nombre nombre=new Nombre(nombre1);
	%>
    <%-- Muestra las inciales del nombre y los apellidos --%>
    <p>Tus iniciales son <%=nombre.acronimo() %></p>

</body>
</html>