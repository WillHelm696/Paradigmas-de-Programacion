package Eje_2;

public class Circunferencia{
    private double Radio=0;
    public Circunferencia(double Radio){
        this.Radio=Radio;
    }
    public double CalcularArea(){
        return Math.PI*Radio*Radio;
    }
    public double CalcularPerimetro(){
        return Math.PI*Radio;
    }
    public  void ModificarRadio(double NuevoRadio){
        Radio=NuevoRadio;
    }
    public void ConsultarRadio(){
        System.out.println("El radio es"+Radio);
    }
}
