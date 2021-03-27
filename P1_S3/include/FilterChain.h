//
// Created by Pablo Jj on 24/3/21.
//

#ifndef P1_S3_FILTERCHAIN_H
#define P1_S3_FILTERCHAIN_H

#include "Filter.h"
#include <list>

class FilterChain {
    std::list<Filter> filters;
    std::unique_ptr<Target> target;

public:
    FilterChain(const Target & t);
    void addFilter(const Filter & f);
    void execute();
    void setTarget(const Target & t);
};


#endif //P1_S3_FILTERCHAIN_H
