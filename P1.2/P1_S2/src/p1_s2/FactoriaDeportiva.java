package p1_s2;

/**
 * 
 * @author Raquel Molina Reche (GH: rmr00),
 * Pablo Jiménez Jiménez (GH: pablojj1808)
 */
public class FactoriaDeportiva extends AbstractFactory {
    
    @Override
    Evento crearEvento(int numEntradas) {
        return new EventoDeportivo(numEntradas);
    }

    @Override
    Usuario crearUsuario(int id) {
        return new UsuarioDeportivo(id);
    }
}
