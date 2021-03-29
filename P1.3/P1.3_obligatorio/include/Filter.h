
#ifndef P1_S3_FILTER_H
#define P1_S3_FILTER_H

#include "Target.h"

struct Filter {
    virtual void execute(Target& t) = 0;
};


#endif //P1_S3_FILTER_H
