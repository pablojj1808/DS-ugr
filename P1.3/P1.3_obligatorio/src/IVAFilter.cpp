#include "color.h"
#include "IVAFilter.h"
#include <string>
using namespace std;

void IVAFilter::execute(Target& t) {
    double iva = Filter::aleatorio(3, 30);
    string a = "Aplicando filtro de IVA " + to_string(iva) + "%";
    t.addLog(a);
    t.setPrecio( t.getPrecio() + t.getPrecio() * iva/100 );
}