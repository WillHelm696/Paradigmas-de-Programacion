import java.util.Scanner;
public class Eje2_3{
	public static void main(String[] args){
		Scanner valor = new Scanner(System.in);
		double r=0 ;
		double v=0 ;
		System.out.println("Ingrese el Radio de la esfera:");
		r = valor.nextDouble() ;
		v = VolumenEsfera(r);
		System.out.println("El volumen de la esfera es:"+v);
	}
	
	public static double VolumenEsfera(double r){
		double v;
		v=(4/3)*Math.PI*Math.pow(r,3) ;
		return v;
	}
}
