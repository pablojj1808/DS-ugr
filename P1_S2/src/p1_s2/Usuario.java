package p1_s2;

import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * 
 * @author Raquel Molina Reche (GH: rmr00),
 * Pablo Jiménez Jiménez (GH: pablojj1808)
 */
public class Usuario{
    
    private int id;
    
    Usuario(int id) {
        this.id=id;
    }
    
    public int getIdentificador(){
        return id;
    }
}
