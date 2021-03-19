package p1_s2;

/**
 * 
 * @author Raquel Molina Reche (GH: rmr00),
 * Pablo Jiménez Jiménez (GH: pablojj1808)
 */
public class EventoConcierto extends Evento {

    public EventoConcierto(int ne) {
        super(ne, "CONCIERTO");
        
    }

    @Override
    String identificate() {
        return nombre;
    }
    
}
