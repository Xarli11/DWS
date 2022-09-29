<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1>TRAGAPERRAS</h1>
   <%
   int dinero = (int)(Math.random()*1000+1);
   %>
    <form action="tragaperras.jsp" method="post">
    <%-- 
        El atributo readonly hace que el campo no sea editable
    --%>
    <input type="number" name="dinero" value="<%=dinero %>" readonly><br>
    ¿Cuanto dinero te quieres apostar? <input type="number" name="apuesta" min="0" max = "<%=dinero%>"><br>
    <input type="submit" value="Apostar" name="Enviar">
    </form>
</body>
</html>