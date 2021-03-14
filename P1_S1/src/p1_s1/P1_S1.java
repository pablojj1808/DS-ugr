package p1_s1;

/**
 * 
 * @author Raquel Molina Reche (GH: rmr00),
 * Pablo Jiménez Jiménez (GH: pablojj1808)
 */
public class P1_S1 {

    public static void main(String[] args) {
       Ticket t = new Ticket();
       
       HistorialPrecio precioHistorial = new HistorialPrecio();
       PantallaPrecio precioScreen = new PantallaPrecio(t);
       CambiadorPrecio cp = new CambiadorPrecio(t);
       MapaPrecios mp = new MapaPrecios();
       
       
       t.addObserver(precioHistorial);
       t.addObserver(cp);
       t.addObserver(mp);
       
       t.start();
       precioScreen.start();
    }
    
}
