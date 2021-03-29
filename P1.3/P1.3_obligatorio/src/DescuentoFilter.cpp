#include "color.h"
#include "DescuentoFilter.h"
#include <iostream>
using namespace std;

void DescuentoFilter::execute(Target& t) {
    string sms = "aplicando filtro descuento: ";
    double ale = Filter::aleatorio(30, 60);

    if(t.getEstado() == SIN_OFERTA) {

        sms += "precio Ticket aumenta un " + to_string(ale) + "%";
        t.setPrecio( t.getPrecio() + t.getPrecio() * ale/100 );

    } else if(t.getEstado() == EN_OFERTA) {


        double nuevo = t.getPrecio() - t.getPrecio() * ale/100;
        if(nuevo < 0) {
            sms += "precio Ticket a 0€";
            t.setPrecio( 0 );
        } else {
            sms += "precio Ticket disminuye un " + to_string(ale) + "%";
            t.setPrecio( nuevo );
        }

    }

    t.addLog(sms);
}