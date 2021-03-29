#include <iostream>
#include "IVAFilter.h"

double IVAFilter::execute(double& precio) {
    precio = precio + precio * 0.21;
    return 0;
}