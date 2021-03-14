
package p1_s1;

import java.util.ArrayList;


public class Composite implements Observer, Component {
    
    private ArrayList<Component> hijos;
    
    void add(Component a) {
        hijos.add(a);
    }

    void remove(Component a) {
        hijos.remove(a);
    }
    
    @Override
    public void operacion() {
        hijos.forEach( (c) -> c.operacion());
    }
    
    update() {
        operacion();
    }
    
}
