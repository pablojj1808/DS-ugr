#include "color.h"
#include "DescuentoFilter.h"
#include <iostream>
using namespace std;

void DescuentoFilter::execute(Target& t) {
    cout << KCYN << "aplicando filtro descuento..." << RST << endl;
    t.setPrecio( t.getPrecio() - t.getPrecio()*descuento );
}