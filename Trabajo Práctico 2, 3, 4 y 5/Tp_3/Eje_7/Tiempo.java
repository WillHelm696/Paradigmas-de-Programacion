package Eje_7;
public class Tiempo {
    private int hora;
    private int minutos;
    private int segundos;
    private Tiempo(){
        this.hora=0;
        this.minutos=0;
        this.segundos=0;
    }
    private Tiempo(int hora,int minutos,int segundos){
        this.hora=hora;
        this.minutos=minutos;
        this.segundos=segundos;
    }

    public void establecerHora(int Hora){
        if (0<=Hora && Hora<=12){
            hora=Hora;
        }
        System.out.println("Hora no vaida");
    }
    public void establecerMinuto(int Minuto){
        if (0<=Minuto && Minuto<=60) {
            minutos = Minuto;
        }
        System.out.println("Minuto no vaida");
    }
    public void EstablecerSegundos(int Segundo){
        if (0<=Segundo && Segundo<=60) {
            segundos = Segundo;
        }
        System.out.println("Segundos no vaida");
    }
    public void imprimirHoraCompleta(){
        System.out.println(hora+":"+minutos+":"+segundos);
    }
}