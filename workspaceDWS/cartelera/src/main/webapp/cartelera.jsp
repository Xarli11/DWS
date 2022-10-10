<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cartelera</title>
</head>
<body>
	<form action="carteleraProc.jsp" method="post">
		<p>Cartelera:</p>
		<select name="generos" multiple>
			<option>Drama</option>
			<option>Comedia</option>
			<option>Ciencia ficcion</option>
			<option>Terror</option>
			<option>Documental</option>
		</select><br>
		<input type="radio" name="duracion" value="0" checked> Cualquier duracion<br>
		<input type="radio" name="duracion" value="59"> Menos de 1 hora<br>
		<input type="radio" name="duracion" value="120"> Entre 1 y 2 horas<br>
		<input type="radio" name="duracion" value="121"> Mas de 2 horas<br>
		
		<p><input type="submit" name="enviar" value="Enviar datos" /></p>
	</form>
</body>
</html>