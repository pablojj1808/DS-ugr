#include <iostream>
#include <memory>
#include "IVAFilter.h"
#include "FilterManager.h"
#include "Cliente.h"
using namespace std;

int main() {

    FilterManager* fm = new FilterManager(new Target());
    Filter* iva = new IVAFilter();

    fm->addFilter(iva);


    Cliente cliente;

    cliente.setFilterManager(fm);

    double p = 18.5;
    cliente.sendRequest(p);

    return 0;
}
