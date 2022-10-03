<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%-- Incluyo el paquete entero por que incluye la interfaz de imagenes y kla clase Jugada --%>
    <%@ page import="apuesta.*" %>
      <!DOCTYPE html>
      <html>

      <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
      </head>

      <body>
        <h1>JUEGO</h1>
        <% 
        //Creo los indices de las imagenes
          int index1=(int)(Math.random()*6); 
          int index2=(int)(Math.random()*6); 
          int index3=(int)(Math.random()*6); 
        //Recojo las variables pasadas por el formulario
          int dinero = Integer.parseInt(request.getParameter("dinero"));
          int apuesta = Integer.parseInt(request.getParameter("apuesta"));
        //Creo el objeto de la clase Jugada
          Jugada jugada=new Jugada(index1,index2,index3,dinero,apuesta); 
        //Elimino el dinero apostado del dinero total
          jugada.setDinero(dinero-apuesta);
          jugada.jugar();
          %>
          <p>
          <%-- 
          Imprimo las imagenes
          --%>
            <img src="img/<%=imagenes.imagenes[index1]%>" width="200px" heigth="200px" alt="Error en la imagen">
            <img src="img/<%=imagenes.imagenes[index2]%>" width="200px" heigth="200px" alt="Error en la imagen">
            <img src="img/<%=imagenes.imagenes[index3]%>" width="200px" heigth="200px" alt="Error en la imagen">
          </p>
          <p>Tu dinero se ha quedado en <%=jugada.getDinero()%> euros</p>
      </body>

      </html>