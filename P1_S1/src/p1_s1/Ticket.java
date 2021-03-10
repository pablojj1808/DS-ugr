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
    private ArrayList<Observer> observadores;
    
    public Ticket() {
        this.precio = rdn.nextDouble() * 100;
        this.miHilo = new Thread("THREAD1");
        this.miHilo.start();
        this.observadores =  new ArrayList<Observer>();
    }

    public void addObservador(Observer o) {
        observadores.add(o);
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
        this.setChanged(); //antes de llamar a notifyObservers hay que invocar al método setChanged para dejar constancia de que se ha producido un cambio
        this.notifyObservers();
        System.out.println(this.precio);
    }
    
    public void notificar(){
        for(int i=0; i < observadores.size()-1 ; i++){ //Por cada observador suscrito se notifica para update
            observadores.get(i).update(this, precio);
        }
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
        System.out.println("esdtoy en el run ??¿?¿?¿?¿?¿?¿?¿?¿");
        while (true) {
            try {
                miHilo.sleep(2000);
                this.setPrecio(rdn.nextDouble() * 100);
                //Notidicamos que se ha producido un cambio
                notificar();
            } catch (InterruptedException ex) {
                System.err.println(ex.getMessage());
            }
        }
    }
}
