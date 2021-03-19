package p1_s2;

/**
 * 
 * @author Raquel Molina Reche (GH: rmr00),
 * Pablo Jiménez Jiménez (GH: pablojj1808)
 */
public class FactoriaDeportiva extends AbstractFactory {
    
    @Override
    Evento crearEvento() {
        return new EventoDeportivo(3);
    }

    @Override
    Usuario crearUsuario() {
        return new UsuarioDeportivo();
    }
}
