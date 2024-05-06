import java.util.Scanner;

public class Eje2_1{
	public static void main(String[] args){
	
		Scanner valor = new Scanner(System.in);
		int a = 0 ;
		int b = 0 ;
		System.out.println("ingrese dos valores Numericos");
		a = valor.nextInt() ;
		b = valor.nextInt() ;
		if (a>b)
			System.out.println("El mayor valor es:"+a);
		else
			System.out.println("El mayor valor es:"+b);
	}
}
