
#ifndef P1_S3_IVAFILTER_H
#define P1_S3_IVAFILTER_H

#include "Target.h"
#include "Filter.h"

class IVAFilter : public Filter {
public:
    void execute(Target&);
};


#endif //P1_S3_IVAFILTER_H
