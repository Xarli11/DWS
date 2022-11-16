package servicios;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
* Servlet implementation class PrimerServlet
*/
@WebServlet("/PrimerServlet")
public class PrimerServlet extends HttpServlet {
// Declaración de variables miembro correspondientes a
// los campos del formulario
private String nombre=null;
private String apellidos=null;
private String opinion=null;
private String comentarios=null;
// Este método se ejecuta una única vez (al ser inicializado el servlet)
// Se suelen inicializar variables y realizar operaciones costosas en
// tiempo de ejecución (abrir ficheros, bases de datos, etc)
public void init(ServletConfig config) throws ServletException {
// Llamada al método init() de la superclase (GenericServlet)
// Así se asegura una correcta inicialización del servlet
super.init(config);
System.out.println("Iniciando PrimerServlet...");
} // fin del método init()

public void destroy() {
System.out.println("No hay nada que hacer...");
} // fin del método destroy()

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
// Adquisición de los valores del formulario a través del objeto req
nombre=request.getParameter("nombre");
apellidos=request.getParameter("apellidos");
opinion=request.getParameter("opinion");
comentarios=request.getParameter("comentarios");
devolverPaginaHTML(response);
// Devolver al usuario una página HTML con los valores adquiridos
}

public void devolverPaginaHTML(HttpServletResponse response
) {
//En primer lugar se establece el tipo de contenido MIME (Múltiples Internet Mail Extensions) de la respuesta. Es una forma estandarizada de indicar la naturaleza y el formato de un documento, archivo o conjunto de datos
response.setContentType("text/html");
// Se obtiene un PrintWriter donde escribir (sólo para mandar texto)
PrintWriter out = null;
try {
out=response.getWriter();
} catch (IOException io) {
System.out.println("Se ha producido una excepcion");
}
// Se genera el contenido de la página HTML
out.println("<html>");
out.println("<head>");
out.println("<title>Valores recogidos en el formulario</title>");
out.println("</head>");
out.println("<body>");
out.println("<h1>Valores recogidos del ");
out.println("formulario: </font></h1>");
out.println("<p><b>Nombre: </b>"+nombre+"</p>");
out.println("<p><b>Apellido: </b>"
+apellidos+"</p>");
out.println("<p> <b>Opinión: </b>" + opinion +
"</p>");
out.println("<p><b>Comentarios: </b>" + comentarios
+"</p>");
out.println("</body>");
out.println("</html>");
// Se fuerza la descarga del buffer y se cierra el PrintWriter,
// liberando recursos de esta forma. IMPORTANTE
out.flush();
out.close();
}}
