
package p1_s2;

/**
 * 
 * @author Raquel Molina Reche (GH: rmr00),
 * Pablo Jiménez Jiménez (GH: pablojj1808)
 */
public abstract class AbstractFactory {
    abstract Evento crearEvento(int numEntradas);
    abstract Usuario crearUsuario(int id);
}
