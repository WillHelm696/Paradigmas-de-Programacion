import java.util.Scanner;
public class Eje4_2{
    public static void main(String[] args){
        Scanner Entrada = new Scanner(System.in);
        String Nombre="";
        System.out.println("Cula es su Nombre:");
        Nombre = Entrada.nextLine() ;
        System.out.println("Buneos dias "+Nombre);
    }
}