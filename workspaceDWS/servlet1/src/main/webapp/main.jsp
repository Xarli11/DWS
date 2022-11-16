<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<H2>Por favor, envíenos su opinión acerca de este sitio web</H2>
<FORM ACTION="PrimerServlet" METHOD="POST">
Nombre: <INPUT TYPE="TEXT" NAME="nombre" SIZE=15><BR>
Apellidos: <INPUT TYPE="TEXT" NAME="apellidos" SIZE=30><P>
Opinión que le ha merecido este sitio web<BR>
<INPUT TYPE="RADIO" CHECKED NAME="opinion" VALUE="Buena">Buena<BR>
<INPUT TYPE="RADIO" NAME="opinion" VALUE="Regular">Regular<BR>
<INPUT TYPE="RADIO" NAME="opinion" VALUE="Mala">Mala<P>
Comentarios <BR>
<TEXTAREA NAME="comentarios" ROWS=6 COLS=40>
</TEXTAREA><P>
<INPUT TYPE="SUBMIT" NAME="botonEnviar" VALUE="Enviar">
<INPUT TYPE="RESET" NAME="botonLimpiar" VALUE="Limpiar">
</FORM>
</body>
</html>
