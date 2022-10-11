<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <!-- 
        Obtenemos el valor de la nota introducida en el formulario
     -->
<%
int num=-1;
String nota = request.getParameter("nota");
//Otra forma de hacelos es con el siguiente código
/*
try{
    num = Integer.parseInt(nota);
    out.print("<p>La nota es: "+(num+17)+"</p>");
    }catch(NumberFormatException e){
        out.print("<p>La nota no es un número</p>");
    }
*/
if(nota.length()>0){
    num = Integer.parseInt(nota);
}
%>
<%-- 
    Te muestra el numero de caracteres
 --%>
<p><%=nota %> nº de caracteres <%=nota.length()%></p>
<% if(num!=-1){ %>
<p>La nota es: <%=num+17%></p>
<% }%>

<p><a href="numeros.html">Volver a introducir nota</a></p>



</body>
</html>