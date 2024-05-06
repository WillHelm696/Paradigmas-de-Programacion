package Eje_2;
public class Cuenta {
    private int Numero_Cuenta;
    private double Saldo;

    public Cuenta(int numero_Cuenta, float saldo) {
        Numero_Cuenta = numero_Cuenta;
        Saldo = saldo;
    }

    public double consultarSaldo() {
        return Saldo;
    }

    public boolean devitar(double Valor) {
        if (Saldo <= Valor) {
            Saldo -= Valor;
            return true;
        }
        return false;
    }
}