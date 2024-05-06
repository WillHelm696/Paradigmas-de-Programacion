package Eje_2;
public class Contador{
	private int valor;
	private int incremento;
	public Contador(){
		valor=0;
		incremento=1;
	}
	public void incrementar(){
		valor += incremento;
	}
	public void decrementar(){
		valor -= incremento;
	}
	
	public void MostrarContador(){
		System.out.println("Elcontador actual esta en :"+valor);
	}
	public void ReiniciarContador(){
		valor=0;
	}
	public void DefinirIncremento(int Nuevoincremento){
		incremento = Nuevoincremento;
	}
}
