
package p1_s1;

import java.util.Observer;
import javax.swing.JPanel;

/**
 * 
 * @author Raquel Molina Reche (GH: rmr00),
 * Pablo Jiménez Jiménez (GH: pablojj1808)
 */
public abstract class Componente extends javax.swing.JPanel implements Observer {
    
    public abstract void operacion();

}
