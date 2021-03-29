import 'Target.dart';
import 'Filter.dart';

class DescuentoFilter implements Filter{

  execute(Target t){

    String sms = 'aplicando filtro descuento: ';
    double ale = aleatorio(30, 60);

    if(t.estado == SIN_OFERTA){
      sms += 'precio Ticket aumenta un ' + toString(ale) + '%';
      t.precio = t.precio + t.precio * ale/100;

    } else if(t.estado == EN_OFERTA) {


        double nuevo = t.precio - t.precio * ale/100;
        if(nuevo < 0) {
            sms += 'precio Ticket a 0€';
            t.precio =  0;
        } else {
            sms += 'precio Ticket disminuye un ' + toString(ale) + '%';
            t.precio = nuevo;
        }

    }

    t.addLog(sms);
    
  }

}