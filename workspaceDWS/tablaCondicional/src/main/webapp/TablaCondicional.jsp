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
/*
    En este ejemplo se muestra como hacer para que segun un numero aleatorio 
    se muestren un numero de filas
*/

int filas = (int)(Math.random()*3+1);
if(filas%2==0){
    %>
    <%-- Si el numero es par se muestra una imagen --%>
    <h2>El numero es par</h2>
    <img src="img/<%=filas%>.png" width="100px" height="100px" atl="Error de imagen">
    <%
}else{
    %>
    <%-- 
        Si el numero es impar se muestra una tabla que repite la misma filal tantas veces
        como sea el numero 
     --%>
    <h2>El numero es impar</h2>
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
    <%
}
%>

</body>
</html>