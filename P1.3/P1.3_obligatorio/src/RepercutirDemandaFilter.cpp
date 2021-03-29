#include "RepercutirDemandaFilter.h"

void RepercutirDemandaFilter::execute(Target& t) {
    string a;

    if(t.getEstado() == EN_OFERTA) {

        double ale = Filter::aleatorio(5, 20);
        a = "La demanda del Ticker sube un " + to_string(ale) + "%";
        t.setDemanda( t.getDemanda() + ale );

    } else if ( t.getEstado() == SIN_OFERTA ) {

        double ale = Filter::aleatorio(5, 10);
        a = "La demanda del Ticker baja un " + to_string(ale) + "%";
        t.setDemanda( t.getDemanda() - ale/100 );

    } else {
        a = "Demanda neutra, no se aplica filtro";
    }

    t.addLog(a);
}