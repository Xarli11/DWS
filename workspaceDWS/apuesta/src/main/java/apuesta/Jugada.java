package apuesta;

public class Jugada {
    private int index1;
    private int index2;
    private int index3;
    private int dinero;
    private int apuesta;

    public Jugada(int index1, int index2, int index3, int dinero, int apuesta) {
        this.index1 = index1;
        this.index2 = index2;
        this.index3 = index3;
        this.dinero = dinero;
        this.apuesta = apuesta;
    }

    public void jugar() {
        dinero -= apuesta;
        if (index1 == index2 && index2 == index3) {
            if (index1 == 0) {
                apuesta = apuesta * 10;
            } else if (index1 != 0) {
                apuesta = apuesta * 5;
            } else if (index1 == index2 || index2 == index3 || index1 == index3) {
                if (index1 == index2) {
                    if (index1 == 0) {
                        apuesta = apuesta * 4;
                    } else if (index3 == 0) {
                        apuesta = apuesta * 3;
                    } else if (index3 != 0) {
                        apuesta = apuesta * 2;
                    } else if (index2 == index3) {
                        if (index2 == 0) {
                            apuesta = apuesta * 4;
                        } else if (index1 == 0) {
                            apuesta = apuesta * 3;
                        } else if (index1 != 0) {
                            apuesta = apuesta * 2;
                        }
                    } else if (index1 == index3) {
                        if (index1 == 0) {
                            apuesta = apuesta * 4;
                        } else if (index2 == 0) {
                            apuesta = apuesta * 3;
                        } else if (index2 != 0) {
                            apuesta = apuesta * 2;
                        }
                    } else if (index1 != index2 && index2 != index3 && index1 != index3) {
                        if(index1==0 || index2==0 || index3==0) {
                            apuesta = apuesta * 1;                            
                        }
                        else {
                            apuesta=0;
                        }
                    }
                }
            }
        }
        dinero += apuesta;
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
