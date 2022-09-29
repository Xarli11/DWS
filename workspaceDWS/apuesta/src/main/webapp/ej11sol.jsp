<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>

	<body>
	<!-- Programa que segun la imagen que te salga el dinero se elimina, se multiplica o se reduce a la mitad -->
		<% int dinero=(int)((Math.random()*100+1)); int index=(dinero%3+1); %>
			<form action="autentifica.jsp" method="POST">
				<p>El dinero que tienes es <%=dinero %></p>
				<img src="img/<%=index %>.jpg" width="200px" heigth="200px" alt="Error de la imagen" width="200px">
				<% if(index==1){ %>
					<p>Has perdido la mitad del dinero</p>
					<% } if(index==2){ %>
						<p>Has perdido todo el dinero</p>
						<% } if(index==3){ %>
							<p>Has multiplicado por 2 el dinero</p>
							<% } %>
			</form>

	</body>

	</html>