#include <thread>
#include <memory>
#include "DescuentoFilter.h"
#include "IVAFilter.h"
#include "FilterManager.h"
#include "Cliente.h"
#include "RepercutirDemandaFilter.h"
using namespace std;

int main() {

    const double PRECIO_INICIAL = 12;
    FilterManager* fm = new FilterManager(new Target(PRECIO_INICIAL));

    // filtros
    Filter* iva = new IVAFilter();
    Filter* desc = new DescuentoFilter();
    Filter* dm = new RepercutirDemandaFilter();
    fm->addFilter(iva);
    fm->addFilter(desc);
    fm->addFilter(dm);

    Cliente cliente;
    cliente.setFilterManager(fm);


    // Iniciamos el barrido de los filtros
    while(true) {
        cliente.sendRequest();
        chrono::milliseconds durmiendo(2000);
        this_thread::sleep_for( durmiendo );
    }


    return 0;
}
