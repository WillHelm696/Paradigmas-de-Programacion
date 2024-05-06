package Eje_6;
import java.util.Calendar;
// Incompleto falta terminar
public class Fecha {
    private int mes;
    private int dia;
    private int año;
    public Fecha(){
        this.dia=1;
        this.mes=1;
        this.año=1900;
    }
    public Fecha(int dia, int mes,int año){
        this.dia=dia;
        this.mes=mes;
        this.año=año;
        valida();
    }
    public void leer(double Dia,double Mes, double Año) {
        if (0 <= Dia && Dia <= 31) {
            this.dia = Dia;
        } if (0 <=Mes && Mes <= 12) {
            this.mes = Mes;
        } if (1900 <= Año && Año <= 2050) {
            this.año = Año;
        }
        valida();
    }
    public boolean bisiesto(){
        return (año%4 == 0 && año%100 != 0) ;
    }
    public int diaMes(int mes){
        int[] diasMes={0,31,28,31,30,31,30,31,31,30,31,30,31};
        if (0<mes && mes<=12){
            return diasMes[mes];
        }
        if (mes=2 && biciesto() ){
            return 29;
        }
        return diasMes[0];
    }
    private void valida(){
        if (0 >= dia && dia > 31) {
            dia = 1;
        } if (0 > mes && mes >= 12) {
            mes = 1;
        } if (1900 >= año && año >= 2050) {
            año = 1900;
        }
    }
    public void corta(){
        System.out.println(dia+"-"+mes+"-"+año);
    }
    public int diasTranscurido(){
        int Contador = 0 ;
        for ( int i=1900;i<=año;i++){
            if (i%4 == 0 && i%100 != 0) {
                Contador += 1;
            }
            Contador+=365;
        }
        return Contador ;
    }
    public int diaSemana(){
        Calendar Calendario = new Calendar.getInstance();
        Calendario.set(año,mes-1,dia);
        return Calendario.get(Calendar.DAY_OF_WEEK)-1 ;
    }

}
