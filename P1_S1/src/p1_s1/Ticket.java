package p1_s1;

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
        this.miHilo.start();
    }

    public void addObservador(Observer o) {
        this.addObserver(o);
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
        this.notifyObservers();
        this.setChanged();
        System.out.println(this.precio);
    }

    @Override
    public String toString() {
        return "Ticket{" + "precio=" + precio + '}';
    }

    @Override
    public void run() {
        System.out.println("esdtoy en el run ??¿?¿?¿?¿?¿?¿?¿?¿");
        while (true) {
            try {
                miHilo.sleep(2000);
                this.setPrecio(rdn.nextDouble() * 100);
            } catch (InterruptedException ex) {
                System.err.println(ex.getMessage());
            }
        }
    }
}
