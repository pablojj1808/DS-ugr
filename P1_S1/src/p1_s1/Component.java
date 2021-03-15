
package p1_s1;

import java.util.Observer;
import javax.swing.JPanel;

/**
 * 
 * @author Raquel Molina Reche (GH: rmr00),
 * Pablo Jiménez Jiménez (GH: pablojj1808)
 */
public abstract class Component extends JPanel implements Observer {
    public abstract void operacion();

    void addComponente(Component cp) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
