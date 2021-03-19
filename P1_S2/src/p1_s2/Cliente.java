
package p1_s2;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

/**
 * 
 * @author Raquel Molina Reche (GH: rmr00),
 * Pablo Jiménez Jiménez (GH: pablojj1808)
 */
public class Cliente {
    
    private final int N_USU = 4;
    private Set<Usuario> usuarios;
    private Evento evento;

    
    Cliente(AbstractFactory af) {
        this.evento  = af.crearEvento();
        
        usuarios = new HashSet<>();
        for(int i=0; i<N_USU; i++) {
            usuarios.add(af.crearUsuario());
        }
        
        usuarios.forEach( u -> u.setEvento(this.evento) );
    }

    void hacerCosas() {
        usuarios.forEach( u -> u.start() );
    }
    
    synchronized void comprarEntrada() {
        
//        boolean conseguido = this.evento.comprarEntrada();
//        usuario.haConseguidoEntrada();
    }
    
    void consumirEvento() {
        
    }
    
    void fin() {
        
    }    
}
