import 'Aleatorio.dart';
import 'Estado.dart';
import 'Target.dart';
import 'Filter.dart';

class DescuentoFilter extends Filter with Aleatorio {

  execute(Target t){

    String sms = 'aplicando filtro descuento: ';
    double ale = aleatorio(30, 60);

    if(t.estado == Estado.SIN_OFERTA){
      sms += 'precio Ticket aumenta un '+ ale.toStringAsFixed(4) +' %';
      t.precio = t.precio + t.precio * ale/100;

    } else if(t.estado == Estado.EN_OFERTA) {

        double nuevo = t.precio - t.precio * ale/100;
        if(nuevo < 0) {
            sms += 'precio Ticket a 0€';
            t.precio =  0;
        } else {
            sms += 'precio Ticket disminuye un '+ ale.toStringAsFixed(4) +' %';
            t.precio = nuevo;
        }

    }

    t.addLog(sms);
  }

}