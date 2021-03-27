//
// Created by Pablo Jj on 24/3/21.
//

#ifndef P1_S3_FILTERMANAGER_H
#define P1_S3_FILTERMANAGER_H

#include <memory>
#include "FilterChain.h"

class FilterManager {
    std::unique_ptr<FilterChain> filterChain;

public:
    FilterManager(const Target & t);

    void addFilter(const Filter & f);

    void filterRequest();
};


#endif //P1_S3_FILTERMANAGER_H
