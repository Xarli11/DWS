<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border ="2">
		<%
		int filas = (int) (Math.random() * 5 + 1);
		for (int i = filas; i <= 5; i++) {
			if (i == 5) {
		%>
		<tr>
			<td><img src="img/<%=i%>.png" width="100px" height="100px"
				alt="Error de imagen"></td>
			<td><img src="img/<%=1%>.png" width="100px" height="100px"
				alt="Error de imagen"></td>
			<td><img src="img/<%=2%>.png" width="100px" height="100px"
				alt="Error de imagen"></td>
		</tr>

		<%
		}
		if (i == 4) {
		%>
		<tr>
			<td><img src="img/<%=i%>.png" width="100px" height="100px"
				alt="Error de imagen"></td>
			<td><img src="img/<%=i + 1%>.png" width="100px" height="100px"
				alt="Error de imagen"></td>
			<td><img src="img/<%=1%>.png" width="100px" height="100px"
				alt="Error de imagen"></td>
		</tr>
		<%
		}
		if (i <= 3) {
		%>
		<tr>
			<td><img src="img/<%=i%>.png" width="100px" height="100px"
				alt="Error de imagen"></td>
			<td><img src="img/<%=i + 1%>.png" width="100px" height="100px"
				alt="Error de imagen"></td>
			<td><img src="img/<%=i + 2%>.png" width="100px" height="100px"
				alt="Error de imagen"></td>
		</tr>
		<%
		}
		}
		%>
	</table>
</body>
</html>