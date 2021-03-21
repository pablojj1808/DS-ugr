package p1_s2;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

/**
 *
 * @author Raquel Molina Reche (GH: rmr00), Pablo Jiménez Jiménez (GH:
 * pablojj1808)
 */
public abstract class Evento extends Thread {

    protected int numEntradas;
    protected String nombre;
    protected ArrayList<Usuario> publico;
    
    protected Thread miHilo;

    Evento(int ne, String n) {
        numEntradas = ne;
        nombre = n;
        publico = new ArrayList<>();
    }

    abstract String identificate();
    
    void addPublico(Usuario u) {
        publico.add(u);
    }
    
    @Override
    public abstract void run();


}
