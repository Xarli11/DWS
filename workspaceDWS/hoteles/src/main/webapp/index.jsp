<!DOCTYPE html> 
<%@ page import = "modelo.*" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>

<body>
    <form action="reserva.jsp" method="post">
<%
String dato;
for(int i=1;i<alojamientos.hts.length;i++){
    dato = alojamientos.hts[i][0];
%>
<input type="radio" name="hotel" value="<%=dato%>" checked>
<%=dato %><br>
<%} %>
<p>REGIMEN DE ALOJAMIENTO ELEGIDO</p>
<input type = "radio" name = "regimen" value = "PC" checked>PC<br>
<input type = "radio" name = "regimen" value = "MP" >MP<br>
<input type = "radio" name = "regimen" value = "AD" >AD<br>
<p>EXTRAS</p>
<input type="checkbox" name="parking" value="Parking">Parking <br>
<input type="checkbox" name="spa" value="Spa">Spa <br>
<p>NUMERO DE DIAS
<input type="number" name="dias" min="1"></p>
        <p><input type="submit" name="enviar" value="enviar datos"></p>
    </form>
</body>

</html>