
#ifndef P1_S3_IVAFILTER_H
#define P1_S3_IVAFILTER_H

#include "Target.h"
#include "Filter.h"

class IVAFilter : public Filter {
    double por;
public:
    IVAFilter() : por(0.21) { }
    void execute(Target&);
};


#endif //P1_S3_IVAFILTER_H
