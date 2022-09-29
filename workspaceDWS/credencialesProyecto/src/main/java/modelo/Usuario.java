package modelo;

public class Usuario {
    private String usuario;
    private String clave;

    public Usuario(String usuario, String clave) {
        this.usuario = usuario;
        this.clave = clave;
    }

    public boolean identifica(){
        boolean encontrado = false;
        for (int i =0; i<claves.usuarios.length;i++){
	        if(claves.usuarios[i][0].equals(this.usuario)){
		if(claves.usuarios[i][1].equals(this.clave)){
		encontrado = true;
		break;	
		}
		break; //Sin repeticiones
	}
    }
    return encontrado;
    }
}

