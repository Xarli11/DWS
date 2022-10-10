package modelo;

import java.util.ArrayList;

public class Peticion {
	private String[] genero;
	private int duracion;
	
	public Peticion(String[] genero, int duracion) {
		this.genero = genero;
		this.duracion = duracion;
	}
	public String[] getGenero() {
		return genero;
	}
	public void setGenero(String[] genero) {
		this.genero = genero;
	}
	public int getDuracion() {
		return duracion;
	}
	public void setDuracion(int duracion) {
		this.duracion = duracion;
	}
	
	public ArrayList <String> busqueda() {
		ArrayList <String> l = new ArrayList <String>();
		for (int i = 0; i < Cartelera.cartelera.length; i++) {
			if (genero != null) {
				for (int j = 0; j < genero.length; j++) {
					if (genero[j].equals(Cartelera.cartelera[i][1]) && ((duracion==0) || (duracion<=Integer.parseInt(Cartelera.cartelera[i][2])))) {
						l.add(Cartelera.cartelera[i][0] + " " + Cartelera.cartelera[i][1] + " " + Cartelera.cartelera[i][2]);
					}
				}
			}
		}
		return l;
	}
}
