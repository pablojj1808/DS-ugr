
package p1_s1;

import java.util.ArrayList;
import java.util.Observable;

/**
 * 
 * @author Raquel Molina Reche (GH: rmr00),
 * Pablo Jiménez Jiménez (GH: pablojj1808)
 */
public class Composite extends Component {
    
    protected ArrayList<Component> hijos;

    public Composite() {
        hijos = new ArrayList<>();
    }
    
    
    
    public void addComponente(Component a) {
        hijos.add(a);
    }

    public void remove(Component a) {
        hijos.remove(a);
    }

    @Override
    public void operacion() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void update(Observable o, Object arg) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
   
    
}
