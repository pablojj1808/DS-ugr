package p1_s1;

import java.util.ArrayList;
import java.util.Observable;
import java.util.Observer;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Ticket extends Observable implements Runnable {

    private double precio;
    private static Random rdn = new Random();
    private Thread miHilo;
    
    public Ticket() {
        this.precio = rdn.nextDouble() * 100;
        this.miHilo = new Thread("THREAD1");
        
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
        this.setChanged(); //antes de llamar a notifyObservers hay que invocar al método setChanged para dejar constancia de que se ha producido un cambio
        this.notifyObservers(this.precio); //el método notifyObservers tiene como argumento el Object con la información a publicar 
        System.out.println(this.precio);
    }
    

    @Override
    public String toString() {
        return "Ticket{" + "precio=" + precio + '}';
    }
    
    public void start(){
        miHilo = new Thread(this);
        miHilo.start();
    }

    @Override
    public void run() {
        while (true) {
            try {
                miHilo.sleep(3000);
                this.setPrecio(rdn.nextDouble() * 100);
            } catch (InterruptedException ex) {
                System.err.println(ex.getMessage());
            }
        }
    }
}
