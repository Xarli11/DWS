<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="buttonProc.jsp" method="post">
<%-- 
    Crea una lista de nueve botones y mas tarde despues de procesarlo te dice que boton
    has pulsado
 --%>
<%
for(int i=1;i<10;i++){
%>
<button type ="submit" name ="bt" value = "<%=i%>"><%=i%></button>
<%
}
%>
</form>
</body>
</html>