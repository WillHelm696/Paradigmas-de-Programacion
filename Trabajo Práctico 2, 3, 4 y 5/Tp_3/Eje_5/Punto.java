package Eje_5;
public class Punto{
    private double x ;
    private double y ;
    public Punto(double x,double y){
        this.x=x;
        this.y=y;
    }
    public double Deltay(Punto v1,Punto v2){
        double v = v2.y - v1.y ;
        return v ;
    }
    public double Deltax(Punto v1,Punto v2){
        return  v2.x-v1.x ;
    }
    public void Desplazamiento(double deltax, double deltay){
        this.x+=deltax ;
        this.y+=deltay ;
    }
}
