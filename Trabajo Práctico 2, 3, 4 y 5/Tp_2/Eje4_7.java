import java.util.Scanner;
public class Eje4_7{
    public static void main(String[] args){
        Scanner Entrada=new Scanner(System.in);
        int Dia=0 ;
        System.out.println("Ingrese un dia Semanal con 1-7");
        Dia = Entrada.nextInt();
        switch (Dia){
            case 1: System.out.println("Es Un dia Laboral");
                    break;
            case 2: System.out.println("Es Un dia Laboral");
                    break;
            case 3: System.out.println("Es Un dia Laboral");
                    break;
            case 4: System.out.println("Es Un dia Laboral");
                    break;
            case 5: System.out.println("Es Un dia Laboral");
                    break;
            case 6: System.out.println("No Es Un dia Laboral");
                    break;
            case 7: System.out.println("No Es Un dia Laboral");
                    break;
            default: System.out.println("No Es Un dia Semanal");
                    break;
        }

    }

}