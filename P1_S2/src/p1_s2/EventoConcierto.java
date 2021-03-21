package p1_s2;

import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * 
 * @author Raquel Molina Reche (GH: rmr00),
 * Pablo Jiménez Jiménez (GH: pablojj1808)
 */
public class EventoConcierto extends Evento {

    public EventoConcierto(int ne) {
        super(ne, "CONCIERTO"); 
        
        System.out.println(C.BLUE_BOLD+"\tSe han vendido un total de " + ne + " entradas para el evento CONCIERTO"+C.RESET);
    }

    @Override
    String identificate() {
        return nombre;
    }
    
    @Override
    public void run() {
        
        try {
            System.out.println("\t"+C.BLUE_BACKGROUND + C.WHITE + "¡Comienza el evento "+nombre+"!" +C.RESET);

            Random rand = new Random();

            //Un 30% de los asistentes salen del concierto por alguna razón
            int salidas = (int)(publico.size() * 0.3);
            int num_aleatorio;

            //System.out.println("Salidas "+salidas);


            for(int i=0; i <salidas; i++ ){
                //Se realiza aleatoriamente una acción
                int accion = rand.nextInt(6);
                //System.out.println("accion "+accion);

                switch(accion){ //Se elimina aleatoriamente a esos participantes
                    case 0: //Mareos
                        num_aleatorio = rand.nextInt(publico.size());
                        System.out.println(C.BLUE +"\tEl usuario "+ publico.get(num_aleatorio).getIdentificador() +" sale del concierto porque se marea");
                        publico.remove(num_aleatorio);
                        this.sleep(2000);
                        break;

                    case 1: //No les gusta
                        num_aleatorio = rand.nextInt(publico.size());
                        System.out.println(C.BLUE +"\tEl usuario "+ publico.get(num_aleatorio).getIdentificador() +" sale del concierto porque no le está gustando");
                        publico.remove(num_aleatorio);
                        this.sleep(3000);
                        break;
                    case 2:
                        num_aleatorio = rand.nextInt(publico.size());
                        System.out.println(C.BLUE +"\tEl usuario "+ publico.get(num_aleatorio).getIdentificador() +" sale del concierto porque tiene sueño");
                        publico.remove(num_aleatorio);
                        this.sleep(2000);
                        break;
                    case 3: //Mareos
                        num_aleatorio = rand.nextInt(publico.size());
                        System.out.println(C.BLUE +"\tEl usuario "+ publico.get(num_aleatorio).getIdentificador() +" sale del concierto porque se marea");
                        publico.remove(num_aleatorio);
                        this.sleep(1000);
                        break;

                    case 4: //No les gusta
                        num_aleatorio = rand.nextInt(publico.size());
                        System.out.println(C.BLUE +"\tEl usuario "+ publico.get(num_aleatorio).getIdentificador() +" sale del concierto porque no le está gustando");
                        publico.remove(num_aleatorio);
                        this.sleep(2000);
                        break;
                    case 5:
                        num_aleatorio = rand.nextInt(publico.size());
                        System.out.println(C.BLUE +"\tEl usuario "+ publico.get(num_aleatorio).getIdentificador() +" sale del concierto porque tiene sueño");
                        publico.remove(num_aleatorio);
                        this.sleep(3000);
                        break;
                }
            }
            
            System.out.println("\t"+C.BLUE_BACKGROUND + C.WHITE + "¡Termina el evento "+nombre+"!"+C.RESET);

        } catch (InterruptedException ex) {
            Logger.getLogger(EventoConcierto.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
}
