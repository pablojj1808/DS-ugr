package p1_s2;

import java.util.HashSet;
import java.util.Set;

/**
 *
 * @author Raquel Molina Reche (GH: rmr00), Pablo Jiménez Jiménez (GH:
 * pablojj1808)
 */
public abstract class Evento {

    protected int numEntradas;
    protected String nombre;
    protected Set<Usuario> publico;

    Evento(int ne, String n) {
        numEntradas = ne;
        nombre = n;
        publico = new HashSet<>();
    }

    abstract String identificate();
    
    void addPublico(Usuario u) {
        publico.add(u);
    }

    synchronized boolean comprarEntrada(String id) {
        if (numEntradas > 0) {
            numEntradas--;
            this.informar(id);
            return true;
        }

        System.out.printf(
                "%s%sEVENTO %s SE QUEDA SIN ENTRADAS DISPONIBLES. %s%n",
                C.RED_BACKGROUND, C.WHITE, this.identificate(), C.RESET
        );
        this.empezarEvento();
        return false;
    }
    
    void empezarEvento() {
        System.out.printf("%sEmpieza el evento %s ...............%n", C.YELLOW_UNDERLINED,this.identificate());
        publico.forEach(p -> p.consumirEvento());
    }

    void informar(String id) {
        String color = C.BLUE;
        if (this.identificate().equals("CONCIERTO")) {
            color = C.GREEN;
        }

        System.out.printf(
                "%sUsuario %s %s : ha comprado entrada de evento.%n",
                color, this.identificate(), id
        );
    }

}
