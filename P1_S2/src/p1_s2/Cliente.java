
package p1_s2;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Random;
import java.util.Set;

/**
 * 
 * @author Raquel Molina Reche (GH: rmr00),
 * Pablo Jiménez Jiménez (GH: pablojj1808)
 */
public class Cliente {
    private Evento evento;

    
    Cliente(AbstractFactory af) {
        //Se generan el numero de entradas del evento aleatoriamente
        int ne = generarNumeroEntradas();

        //Se crea el evento
        this.evento  = af.crearEvento(ne);
        
        //Se crean tantos usuarios como entradas tenga el evento
        for(int i=0; i<ne; i++) {
            evento.addPublico(af.crearUsuario(i+1));
        }
    }
    
    public static int generarNumeroEntradas(){
        Random rand = new Random();
        int entradas = rand.nextInt(20)+20;
        return  entradas;  
    }

    void hacerCosas() {      
        evento.start();
        
    }

}
