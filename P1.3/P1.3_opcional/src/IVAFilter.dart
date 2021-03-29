import 'Aleatorio.dart';
import 'Target.dart';
import 'Filter.dart';

class IVAFilter extends Filter with Aleatorio {

  execute(Target t){

    double iva = aleatorio(3,30);

    String a = 'Aplicando filtro de IVA ' + iva.toStringAsFixed(4) +'%';

    t.addLog(a);
    t.precio = t.precio + t.precio * iva/100;

  }

}