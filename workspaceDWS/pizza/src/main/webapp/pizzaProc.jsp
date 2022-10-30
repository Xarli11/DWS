<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="modelo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    String namePizza = request.getParameter("namePizza");
    String namePizzeria = request.getParameter("namePizzeria");
    String tamaño = request.getParameter("tamaño");
   /* String cheese = request.getParameter("1"); //Queso
    String tomato = request.getParameter("2"); //Tomate
    String bacon = request.getParameter("3"); //Bacon
    String onion = request.getParameter("4"); //Cebolla
    String egg = request.getParameter("5"); //Huevo
    String toad = request.getParameter("6"); //Champiñon*/
    for(int i=0;i<6;i++){
        if(request.getParameter(i)!=null){
            ingredientes.add(request.getParameter(i));
        }
    }
%>
<h1>Detalles</h1>
Nombre: <%=namePizza%><br>
Pizzeria: <%=namePizzeria%><br>
<%if(tamaño.equals("Grande")){%>
Tamaño: Grande<br>
<%}else if(tamaño.equals("Mediana")){%>
Tamaño: Mediana<br>
    
<%
if(ingredientes.size()>0){
    out.println("Ingredientes: ");
    for(int i=0;i<ingredientes.size();i++){
        out.println(ingredientes.get(i));
    }
}
%>


</body>
</html>