package p1_s1;

/**
 * 
 * @author Raquel Molina Reche (GH: rmr00),
 * Pablo Jiménez Jiménez (GH: pablojj1808)
 */
public class Principal {

    public static void main(String[] args) {
       Ticket t = new Ticket();
       
       //Observador 1
       HistorialPrecio precioHistorial = new HistorialPrecio();
       //Observador 2 (no suscrito)
       PantallaPrecio precioScreen = new PantallaPrecio(t);
       //Observador 3
       Componente cp = new CambiadorPrecio(t);
       //Observador 4o
       Componente mp = new MapaPrecios();
       //Observador 5 composite
       Componente panelCompuesto = new PanelCompuesto(t);
        
       
       //Observadores suscritos
       t.addObserver(precioHistorial);
       t.addObserver(cp);
       t.addObserver(mp);
       t.addObserver(panelCompuesto);
       
       
       MainWindow vp = new MainWindow(t,precioHistorial, precioScreen,cp,mp, panelCompuesto);
       
       t.start();
       precioScreen.start();
    }
    
}
