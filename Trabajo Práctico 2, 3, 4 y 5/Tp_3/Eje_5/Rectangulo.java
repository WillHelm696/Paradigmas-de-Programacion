package Eje_5;
//Incompleto Falta terminar
public class Rectangulo {
    private punto punto1;
    private punto punto2;
    private punto punto3;
    private punto punto4;
    public Rectangulo(double punto1, double punto2, double punto3, double punto4) {
        this.punto1 = punto1;
        this.punto2 = punto2;
        this.punto3 = punto3;
        this.punto4 = punto4;
    }
    public Rectangulo(double base, double haltura ){
        this.punto1= new Punto(0,0);
        this.punto2= new Punto(base,0);
        this.punto3= new Punto(0,haltura);
        this.punto4= new Punto(base,haltura);
    }
    public double CalcularSuperfice(){
        double base=Deltax(punto1,punto2);
        double haltura=Deltay(punto1,punto2);
        return base*haltura ;
    }
}


