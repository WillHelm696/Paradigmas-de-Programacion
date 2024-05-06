package Eje_8;
import java.util.Scanner
//Terminar En Proceso
public class Ahorcado {
    Scanner Entrada  = new Scaner(System.in);
    private String Palabra;
    private char[] Encontradas;
    private int Intentos;
    private int Longitud

    public Aorcado(String Palabra ,int Intentos) {

        this.Palabra = Palabra.toLoweCase();
        this.Longitud = Palabra.length();
        this.Encontradas = new char[Longitud];
        this.Intentos = Intentos;
    }
    //Metodo para buscar si la palabra es parte
    public boolean EsParte(char Letra){
        Letra=Letra.toLoweCase()
        for (int i=0;i<=Longitud;i++){
            if (Palabra.charAt(i) == Letra){
                Encontradas[i]=Letra
                return true;
            }
        }
        Intentos--;
        return false;
    }
    //Metodo Para Informar Erorr O acierto
    public void Acierto(){
        if (EsParte==true) {
            System.out.printl("ES UNA LETRA");
        }
        System.out.printl("NO ES LA LETRA ENCONTRADA");
    }
    //Metodo Para mostrar cuantas oportunidades le quedan
    public void Oportunidades() {
        System.out.print("Numero de oportunidades restantes:" + Intentos);
    }
    //Metodo que al pedir ingresar una letra mueste que letras an sido entrontrados
    public void PedirLetra(char X ) {
        Oportunidades();
    }
    public PalabraEncontada(){
        if (Encontradas){
            retrun
        }
    }
    public FinOportunidades() {
        Sistem.out.println("Terminaron Las Oportunidades");
    }
}