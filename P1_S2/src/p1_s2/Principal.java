
package p1_s2;

import java.util.Scanner;

/**
 * 
 * @author Raquel Molina Reche (GH: rmr00),
 * Pablo Jiménez Jiménez (GH: pablojj1808)
 */
public class Principal {

    private static Scanner in = new Scanner(System.in);
    
    public static void main(String[] args) {
        
        System.out.print("¿Cuántos usuarios quieres?: ");
        int usuarios = in.nextInt();
        
        AbstractFactory afConcierto = new FactoriaConcierto();
        AbstractFactory afDeportivo = new FactoriaDeportiva();
        
        // 2. Creamos un cliente
        Cliente cliente1 = new Cliente(usuarios, afConcierto);
        
        Cliente cliente2 = new Cliente(afDeportivo);
        cliente1.hacerCosas();
        cliente2.hacerCosas();
        // 1. Usuarios intentan conseguir entradas
        
    }
    
}
