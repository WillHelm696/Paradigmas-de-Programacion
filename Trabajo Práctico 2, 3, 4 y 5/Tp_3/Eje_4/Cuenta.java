package Eje_4;
public class Cuenta {
	private int DNI;
	private int IDCuenta;
	private double Saldo  ;
	private double Interes ;

	public Cuenta(int DNI, int IDCuenta, double Saldo, double Interes) {
		this.DNI = DNI;
		this.IDCuenta = IDCuenta;
		this.Saldo = Saldo;
		this.Interes = Interes;
	}

	public void actualizarSaldo(){
		Saldo += Saldo*(Interes/360/100);
	}
	public void ingresar(double Ingreso){
		if (0<=Ingreso) {
			Saldo += Ingreso;
			System.out.println("Saldo Actualizado"+Saldo);
		}
		System.out.println("Ingreso No Valido");
	}
	public boolean Retirar(double Retiro){
		if (Saldo>Retiro && Retiro >0){
			Saldo-=Retiro;
			return true;
		}
		return false;
	}
	public void MostrarDatosCuenta(){
		System.out.print("DNI:"+DNI);
		System.out.print("IDCuenta"+IDCuenta);
		System.out.print("Ultimo retiro Retiro" );
	}
}
