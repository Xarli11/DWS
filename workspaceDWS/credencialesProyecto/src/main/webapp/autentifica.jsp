<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="modelo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
boolean encontrado = false;
String usuario=request.getParameter("user").trim(); //Devuelve un string sin espacios en blanco ni al principio 
													//Ni al final
String clave = request.getParameter("password").trim();
													
if (usuario.isEmpty() || clave.isEmpty()){
	out.print("<p>debes rellenar el campo usuario</p>");
	out.print("<p><a href='autentificacion.html'> volver a intentar </a></p>");
	//No puedo poner dobles comillas dentro, tengo que poner comillas simp,es por que si no no me lo detecta como un acceso
	//La otra opcion seria asi: \"autentificacion\"
}
else{
	Usuario u = new Usuario(usuario,clave);
}
	if (encontrado){
		//Reenviar a entrada
		response.sendRedirect("acceso.html");
	}
	else{
		out.print("<p>debes rellenar el campo usuario</p>");
		out.print("<p><a href='autentificacion.html'> volver a intentar </a></p>");
	}

%>
<p>Usuario: <%=usuario %> </p>

</body>
</html>