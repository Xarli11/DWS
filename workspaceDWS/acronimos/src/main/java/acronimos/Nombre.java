package acronimos;

public class Nombre {
	/*
	 * Crea la variable nombre
	 */
    	private String nombre;
    public Nombre(String nombrecompleto) {
        this.nombre = nombrecompleto;
    }
    /*
     * Crea una variable palabras donde se va a ir añadiendo las iniciales del nombre y apellidos
     * Se usa la funcion Split() separa un string en palabras y las añade a un array
     */
    public String acronimo(){
        String[] palabras = nombre.split(" ");
        String acronimo = "";
        for (String palabra : palabras) {
            acronimo += palabra.charAt(0); //CharAt coge una posicion del array
        }
        acronimo.toUpperCase();
        return acronimo;
    }
}
