<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "modelo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String hotel = request.getParameter("hotel");
String regimen = request.getParameter("regimen");
String parking = request.getParameter("parking");
String spa = request.getParameter("spa");
int dias = Integer.parseInt(request.getParameter("dias"));
prerreserva pr = new prerreserva(hotel,regimen,dias);
pr.setNombreHotel(hotel);
pr.setRegimenAloj(regimen);

pr.setDias(dias);

%>
<p>El hotel seleccionado es: <%=hotel%></p>
<p>El régimen seleccionado es: <%=regimen%></p>
<%if(parking!=null){
    pr.setParking(true);
    %>
<p>Has reservado Parking</p>
<%}%>
<%if(spa!=null){
    pr.setSpa(true);
    %>
<p>Has reservado Spa</p>
<%}%>
<p>El precio total es de <%=pr.calculaPrecio() %></p>
</body>
</html>