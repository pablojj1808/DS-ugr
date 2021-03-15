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
       Component cp = new CambiadorPrecio(t);
       Component mp = new MapaPrecios();
       
        
        
        Component panelCompuesto = new PanelCompuesto(t);
//        panelCompuesto.addComponente(cp);
//        panelCompuesto.addComponente(mp);
        MainWindow mw = new MainWindow(t);
       
       t.addObserver(precioHistorial);
       t.addObserver(cp);
       t.addObserver(mp);
       
       t.start();
       precioScreen.start();
    }
    
}
