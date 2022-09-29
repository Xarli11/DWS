package apuesta;

public class Jugada {
    private int index1;
    private int index2;
    private int index3;
    private int dinero;
    private int apuesta;

    public Jugada(int index1, int index2, int index3, int dinero, int  apuesta){
        this.index1 = index1;
        this.index2 = index2;
        this.index3 = index3;
        this.dinero = dinero;
        this.apuesta = apuesta;
    }

    public void jugar(){
        if(index1==index2 && index2==index3){
            if (index1==0){
                dinero = dinero*10;
            }
            else{
                dinero = dinero*5;
            }
        }
        if (index1==index2 || index2==index3 || index1==index3){
            // Cuando el 1º y 2º son iguales
        if (index1==index2){
            if (index1==0){
                dinero = dinero*4;
            }
            else if (index3==0){
                dinero = dinero*3;
            }
            else if (index3!=0){
                dinero = dinero*2;
            }
        }
        //Cuando el 2º y 3º son iguales
        if (index2==index3){
            if (index2==0){
                dinero = dinero*4;
            }
            else if (index1==0){
                dinero = dinero*3;
            }
            else if (index1!=0){
                dinero = dinero*2;
            }
        }
        // Cuando el 1º y 3º son iguales
        if (index1==index3){
            if (index1==0){
                dinero = dinero*4;
            }
            else if (index2==0){
                dinero = dinero*3;
            }
            else if (index2!=0){
                dinero = dinero*2;
            }
        }
        }
        else if(index1!=index2 && index2!=index3 && index1!=index3){
            dinero=dinero*1;
        }
    }
    public int getDinero() {
        return dinero;
    }
    public void setDinero(int dinero) {
        this.dinero = dinero;
    }
    public int getApuesta() {
        return apuesta;
    }
}
