package Eje_2;

public class Libro {
    private String titulo;
    private String autor;
    private boolean prestado;
    public Libro(String titulo, String autor, boolean prestado) {
        this.titulo = titulo;
        this.autor = autor;
        this.prestado = prestado;
    }
    public void Prestamo() {
        if (prestado) {
            System.out.println("El libro" + titulo + "Esta prestado");
        }
        else {
            System.out.println("El libro" + titulo + "Esta Disponible");
        }
    }
    public void Devolucion() {
        if ( prestado ) {
            prestado = false;
            System.out.println("El libro " + titulo + "A sido devueto");
        } else {
            System.out.println("El libro " + titulo + "No a sido devuelto");
        }
    }
    public String TransformarATexto () {
        return "Tilulo:" + titulo + "/Autor" + autor + "/Prestado" + (prestado ? "Si" : "No");
    }
}