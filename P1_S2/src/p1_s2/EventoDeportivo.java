package p1_s2;

/**
 * 
 * @author Raquel Molina Reche (GH: rmr00),
 * Pablo Jiménez Jiménez (GH: pablojj1808)
 */
public class EventoDeportivo extends Evento {

    public EventoDeportivo(int ne) {
        super(ne, "DEPORTIVO");
    }
    
    @Override
    String identificate() {
        return nombre;
    }
}
