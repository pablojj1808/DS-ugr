package p1_s1;

import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;


public class Ticket extends Thread {
    
    private double precio;
    private static Random rdn = new Random();
    
    public Ticket(int precio) {
        this.precio = precio;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }
    
    @Override
    public void run() {
        try {
            this.sleep(2000);
            this.setPrecio(rdn.nextDouble() * 100);
            System.out.println("Nuevo : " + this.getPrecio());
        } catch (InterruptedException ex) {
            Logger.getLogger(Ticket.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String toString() {
        return "Ticket{" + "precio=" + precio + '}';
    }
 
}
