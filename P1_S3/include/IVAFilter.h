
#ifndef P1_S3_IVAFILTER_H
#define P1_S3_IVAFILTER_H

#include "Filter.h"

class IVAFilter : public Filter {
public:
    double execute(double& precio);
};


#endif //P1_S3_IVAFILTER_H
