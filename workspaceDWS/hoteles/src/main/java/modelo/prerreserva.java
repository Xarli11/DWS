package modelo;

public class prerreserva {
    private String nombreHotel;
    private String regimenAloj;
    private int dias;
    private boolean parking;
    private boolean spa;
    public prerreserva(String nombreHotel, String regimenAloj, int dias) {
        this.nombreHotel = nombreHotel;
        this.regimenAloj = regimenAloj;
        this.dias = dias;
    }
    public prerreserva(String nombreHotel, String regimenAloj, int dias, boolean parking, boolean spa) {
        this.nombreHotel = nombreHotel;
        this.regimenAloj = regimenAloj;
        this.dias = dias;
        this.parking = parking;
        this.spa = spa;
    }
    public String getNombreHotel() {
        return nombreHotel;
    }
    public void setNombreHotel(String nombreHotel) {
        this.nombreHotel = nombreHotel;
    }
    public String getRegimenAloj() {
        return regimenAloj;
    }
    public void setRegimenAloj(String regimenAloj) {
        this.regimenAloj = regimenAloj;
    }
    public int getDias() {
        return dias;
    }
    public void setDias(int dias) {
        this.dias = dias;
    }
    public boolean isParking() {
        return parking;
    }
    public void setParking(boolean parking) {
        this.parking = parking;
    }
    public boolean isSpa() {
        return spa;
    }
    public void setSpa(boolean spa) {
        this.spa = spa;
    }
    public int calculaPrecio(){
        int totalDia=0;
        for (int i = 0; i < alojamientos.hts.length; i++) {
            if (alojamientos.hts[i][0].equals(nombreHotel)){
                if (regimenAloj.equals("PC")){
                    totalDia = Integer.parseInt(alojamientos.hts[i][1]);
                }else if (regimenAloj.equals("MP")){
                    totalDia = Integer.parseInt(alojamientos.hts[i][2]);
                }else if (regimenAloj.equals("AD")){
                    totalDia = Integer.parseInt(alojamientos.hts[i][3]);
                }
                if (parking){
                    totalDia += Integer.parseInt(alojamientos.hts[i][4]);
                }
                if (spa){
                    totalDia += Integer.parseInt(alojamientos.hts[i][5]);
                }
            }
        }
        return totalDia*dias;
    }
   

}
