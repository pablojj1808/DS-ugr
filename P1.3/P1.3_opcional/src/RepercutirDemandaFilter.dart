import 'Aleatorio.dart';
import 'Estado.dart';
import 'Filter.dart';
import 'Target.dart';

class RepercutirDemandaFilter extends Filter with Aleatorio {
  execute(Target t) {
    String a;

    if(t.estado == Estado.EN_OFERTA) {

        double ale = aleatorio(5, 20);
        a = "La demanda del Ticker sube un "+ ale.toStringAsFixed(4) +" %";
        t.demanda = t.demanda + ale ;

    } else if ( t.estado == Estado.SIN_OFERTA ) {

        double ale = aleatorio(5, 10);
        a = "La demanda del Ticker baja un "+ ale.toStringAsFixed(4) +" %";
        t.demanda = t.demanda - ale/100 ;

    } else {
        a = "Demanda neutra, no se aplica filtro";
    }

    t.addLog(a);
  }
}