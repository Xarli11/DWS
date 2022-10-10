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
double op1 = Double.parseDouble(request.getParameter("op1"));
double op2 = Double.parseDouble(request.getParameter("op2"));
String operacion = "";
String bt =request.getParameter("bt");
double sol=0;
switch(Integer.parseInt(bt)){
case 1:
	sol = op1+op2;
	operacion = "+";
	break;
case 2: 
	sol = op1-op2;
	operacion = "-";
	break;
case 3: 
	operacion = "*";
	sol = op1*op2;
	
	break;
case 4:
	operacion = "/";
	sol =op1/op2;
};
%>
<p><%=op1 %> <%=operacion %> <%=op2 %>  = <%=sol %></p>

</body>
</html>