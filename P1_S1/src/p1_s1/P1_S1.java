package p1_s1;


public class P1_S1 {

    public static void main(String[] args) {
       Ticket t = new Ticket();
       
       HistorialPrecio precioHistorial = new HistorialPrecio();
       PantallaPrecio precioScreen = new PantallaPrecio(t);
       PantallaCanaria pc = new PantallaCanaria();
       CambiadorPrecio cp = new CambiadorPrecio(t);
       
       
       t.addObserver(precioHistorial);
       t.addObserver(pc);
       t.addObserver(cp);
       
       t.start();
    }
    
}
