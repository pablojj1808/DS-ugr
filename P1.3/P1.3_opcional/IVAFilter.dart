import 'Target.dart';
import 'Filter.dart';

class IVAFilter implements Filter{

  execute(Target t){

    double iva = aletorio(3,30);

    String a = 'Aplicando filtro de IVA ' + toString(iva) + '%';

    t.addLog(a);
    t.setPrecio(t.precio + t.precio * iva/100);

  }

}