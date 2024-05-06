package Eje_2;

public class  Fecha{
	private int Dia=0;
	private int Mes=0;
	private int Año=0;
	public Fecha(int Dia,int Mes, int Año){
		this.Dia=Dia;
		this.Mes=Mes;
		this.Año=Año;	
	}
	public int getDia(){
		return Dia;
	}
	public int getMes(){
		return Mes;
	}
	public int getAño(){
		return Año;
	}

	public void setDia(int Dia){
		this.Dia = Dia;
	}
	public void setMes(int Mes){
		this.Mes=Mes;
	}
	public void setAño(int Año){
		this.Año=Año;
	}
	public void ModificarFecha(int NuevaDia,int NuevoMes,int NuevoAño){
		Dia=NuevaDia;
		Mes=NuevoMes;
		Año=NuevoAño;
	}
	public boolean VerificaFecha(int verDia,int verMes,int verAño){
		if (verDia==Dia && verMes==Mes && Año==verAño) {
			return true;
		}
		else{
			return false;
		}
	}	
}