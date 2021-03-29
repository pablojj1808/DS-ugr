#include "color.h"
#include "IVAFilter.h"
#include <iostream>
using namespace std;

void IVAFilter::execute(Target& t) {
    cout << KCYN << "aplicando filtro IVA..." << RST << endl;
    t.setPrecio( t.getPrecio() - t.getPrecio() * por );
}