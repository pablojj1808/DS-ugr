#ifndef P1_S3_FILTERCHAIN_H
#define P1_S3_FILTERCHAIN_H

#include "Target.h"
#include "Filter.h"
#include <list>

class FilterChain {
    std::list<Filter*> filters;

public:
    FilterChain();
    void addFilter(Filter* & f);
    void execute(double& precio);

};


#endif //P1_S3_FILTERCHAIN_H
