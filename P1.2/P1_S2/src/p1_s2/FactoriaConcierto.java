
package p1_s2;

/**
 * 
 * @author Raquel Molina Reche (GH: rmr00),
 * Pablo Jiménez Jiménez (GH: pablojj1808)
 */
public class FactoriaConcierto extends AbstractFactory {

    @Override
    Evento crearEvento(int numEntradas) {
        return new EventoConcierto(numEntradas);
    }

    @Override
    Usuario crearUsuario(int id) {
        return new UsuarioConcierto(id);
    }
    
}
