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
String color1 = request.getParameter("color1");
String color2 = request.getParameter("color2");
int dimension = Integer.parseInt(request.getParameter("dimension"));
String imagen1 = "img/alfil.png";
String imagen2 = "img/caballo.png";
int filaAlfil;
int filaCaballo;
int columnaAlfil;
int columnaCaballo;
//Por si tienen las mismas coordenadas
do {
        
        // Alfil
        filaAlfil = (int)(Math.random() * 8) + 1;
        columnaAlfil = (int)(Math.random() * 8);
        
        // Caballo
        filaCaballo = (int)(Math.random() * 8) + 1;
        columnaCaballo = (int)(Math.random() * 8);
        
      } while ((filaAlfil == filaCaballo) && (columnaAlfil == columnaCaballo));
%>
<table border="2">
<%for(int i=0;i<dimension;i++){%>
    <tr>
    <%for(int j=0;j<dimension;j++){
    if ((i==filaAlfil && j==columnaAlfil)||(i==filaCaballo && j==columnaCaballo)){
        //Condicion para sacar el Alfil
        if(i==filaAlfil && j==columnaAlfil){
            %>
            <td width=50px height=50px ><img src=<%=imagen1 %> alt="Error de imagen"></td>
        <%}
        if(i==filaCaballo && j==columnaCaballo){%>
            <td width=50px height=50px ><img src=<%=imagen2 %> alt="Error de imagen"></td>

        <%}
        }

    else{
    if((i+j)%2==0){%>
        <td width=50px height=50px bgcolor=<%=color1 %>></td>
    <% }else{%>
        <td width=50px height=50px bgcolor=<%=color2 %>></td>
    <% }}}}%>
    </tr>
</table>
</body>
</html>