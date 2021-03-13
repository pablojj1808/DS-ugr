package p1_s1;

import java.util.ArrayList;
import javax.swing.JFrame;


public class XXXXXx implements Grafico {
    private ArrayList<Grafico> hijos;

    public XXXXXx() {
        hijos = new ArrayList<>();
    }
    
    public void addHijo(Grafico h) {
        hijos.add(h);
    }
    
    @Override
    public void operacion() {
        hijos.forEach((hijo) -> hijo.operacion());
    }
    
}
