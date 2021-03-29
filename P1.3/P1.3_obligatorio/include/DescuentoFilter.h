
#ifndef P1_S3_DESCUENTOFILTER_H
#define P1_S3_DESCUENTOFILTER_H

#include "Filter.h"
#include "Target.h"

class DescuentoFilter : public Filter {
    double descuento;

public:
    DescuentoFilter() : descuento(0.1) { }
    void execute(Target& t);
};


#endif //P1_S3_DESCUENTOFILTER_H
