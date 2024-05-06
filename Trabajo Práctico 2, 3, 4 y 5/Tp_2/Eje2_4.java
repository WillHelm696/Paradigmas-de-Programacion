import java.util.Scanner;
public class Eje2_4 {
	public static void main(String[] args){
		Scanner Valor= new Scanner(System.in);
		System.out.println("Ingrese los lados de un triangulo") ;
		double a= Valor.nextDouble();
		double b= Valor.nextDouble();
		double c= Valor.nextDouble();
		double A= Area(a,b,c);
		System.out.println("El area del triangulo es:"+A) ;

	} 
	public static double Area(double a,double b,double c){
		double S = (a+b+c)/2 ;
		double A = Math.sqrt(S*(S-a)*(S-b)*(S-c))/2;
		return A ;
	}
}
