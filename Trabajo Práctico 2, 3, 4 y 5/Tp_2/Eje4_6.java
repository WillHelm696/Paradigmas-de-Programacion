import java.util.Scanner;
public class Eje4_6 {
    public static void main(String[] args){
        Scanner Entrada= new Scanner(System.in);
        int Num = 0;
        int Long = 0 ;
        System.out.println("Cuantos Numeros ingresara");
        Long=Entrada.nextInt();
        System.out.println("Ingrese los Numeros");
        //Ingreso de datos
        int vector[] = new int[Long];
        for (int i=0; i < Long;i++ ) {
            vector[i] = Entrada.nextInt();
        }
        // Calcula el promedio
        int Sum=0;
        int i=0;
        do {
            Sum += vector[i] ;
            i++ ;
        }while (i < Long);
        System.out.println("La media aritmetica de los valores es:"+((double) (Sum/Long)));
    }
}