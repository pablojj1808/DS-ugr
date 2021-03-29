
#include <memory>
#include "DescuentoFilter.h"
#include "IVAFilter.h"
#include "FilterManager.h"
#include "Cliente.h"
using namespace std;

int main() {

    FilterManager* fm = new FilterManager(new Target(23.67));

    // filtros
    Filter* iva = new IVAFilter();
    Filter* desc = new DescuentoFilter();
    fm->addFilter(iva);
    fm->addFilter(desc);

    Cliente cliente;
    cliente.setFilterManager(fm);

    // Iniciamos el barrido de los filtros
    cliente.sendRequest();

    return 0;
}
