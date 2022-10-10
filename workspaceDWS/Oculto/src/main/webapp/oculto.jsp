<!DOCTYPE html>
 <html>
 <head>
 <meta charset= "UTF-8">
 <title>I Insert title here</title>
 </head>
 <body>
 <%
int n=(int)(Math. random()*10);
out.print("<p> el nº obtenido es "+n+"</p>");
%>
<h1>datos de tipo oculto</h1>
 <form action= "ocultoProc.jsp" method="post">
<p>pon nombre <input type="text" name="nombre" /></p>
 <input type= "hidden" name= "dato" value="<%=n%>">
<p><input type= "submit" name= "enviar" value= "enviar datos"/></p>

 </form>
 </body>
 </html>
