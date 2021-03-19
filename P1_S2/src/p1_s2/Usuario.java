package p1_s2;

import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * 
 * @author Raquel Molina Reche (GH: rmr00),
 * Pablo Jiménez Jiménez (GH: pablojj1808)
 */
public class Usuario extends Thread {
    
    private Thread miHilo;
    private Evento evt;
    private static int ID_HEBRA = 0;
    private static Random rdn;
    
    static {
        rdn = new Random();
    }
    
    Usuario() {
        miHilo = new Thread(ID_HEBRA + "");
        ID_HEBRA++;
        ID_HEBRA %= 4;
    }
    
    void setEvento(Evento e) {
        evt = e;
    }
    
    synchronized void print(String s) {
        System.out.println(s);
    }
    
    void consumirEvento() {
        int ale = rdn.nextInt(5);
        try {
            if(miHilo.getName().equals( ale + "")) {
                miHilo.sleep(1000);
                System.out.println("Usuario " + miHilo.getName() + "abandona el evento");
            } else {
                miHilo.sleep(2500);
            }
        } catch (InterruptedException ex) {
            Logger.getLogger(Usuario.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    

    @Override
    public void run() {
        
        boolean rtado = evt.comprarEntrada(miHilo.getName()); 
        
        if (rtado) {
            evt.addPublico(this);
        } 
    }
}
