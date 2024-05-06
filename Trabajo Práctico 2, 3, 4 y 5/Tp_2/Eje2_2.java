import java.util.Scanner;

public class Eje2_2{
	public static void main(String[] args){
		Scanner valor= new Scanner(System.in);
		int x=0;
		int y=0;
		System.out.println("Ingrese dos valores Numericos");
		x=valor.nextInt();
		y=valor.nextInt();
		System.out.println("Se agregaron dos variables de tipo double");
		double N=7.5;
		double M=2.0;
		System.out.println("N:"+N);
		System.out.println("M:"+M);
		System.out.println("La Operaciones entre M con N y x con y es:");
		System.out.println("x+y:"+(x+y));
		System.out.println("x-y:"+(x-y));
		System.out.println("x/y:"+((double)x/y));
		System.out.println("x*y:"+(x*y));
		System.out.println("Las operaciones con variavles doubles es");
		System.out.println("N+M:"+(M+N));
		System.out.println("N-M:"+(M-N));
		System.out.println("N/M:"+(M/N));
		System.out.println("N*M:"+(M*N));		
	}
}
