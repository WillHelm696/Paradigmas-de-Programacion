package Ahorcado;
import java.util.Scanner
//Terminar En Proceso
public class Ahorcado {
    Scanner Entrada = new Scaner(System.in);
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
        Letra=Letra.toLoweCase()//Convierte el la cadena en minuscula
        boolean flag=false;
        for (int i=0;i<=Longitud;i++){
            if (Palabra.charAt(i) == Letra){ //charAt(i) Busca en la longitud de la cadena
                Encontradas[i]=Letra
                flag=true ;
            }
        }
        Intentos--;
        return flag;
    }
    //Metodo Para Informar Erorr O acierto
    public void Acierto(char x ){
        if (EsParte(char x)==true) {
            System.out.printl("ES UNA LETRA");
        }
        System.out.printl("NO ES LA LETRA ENCONTRADA");
    }
    //Metodo Para mostrar cuantas oportunidades le quedan
    public void Oportunidades() {
        System.out.print("Numero de oportunidades restantes:" + Intentos);
    }
    //Metodo que al pedir ingresar una letra mueste que letras an sido entrontrados
    public void PedirLetra() {
        char x=Entrada.next().charAt(0);
        int Faltantes=Longitud - Encontradas.size()
        System.out.println("Numero de letras(encontradas,faltantes):"+(Oportunidades(),Faltantes))
        for (int i=0;i<=Longitud;i++){
            if (Encontradas[i] != null){
                Sistem.out.println("_"+);
            }
            else {
                Sistem.out.println(Encontradas[i]+);
            }
        }
    }
    //Metodo en caso de encontrar la palabra
    public void PalabraEncontada() {
        if (Longitud - Encontradas.size() == 0){
            Sistem.out.println("Palabra Encontrada");
        }
    }
    //Metodo en caso de no tener oportunidades
    public void FinOportunidades() {
        if (Intentos == 0) {
            Sistem.out.println("Terminaron Las Oportunidades");
        }
        PalabraEncontada() ;
    }
    //
}