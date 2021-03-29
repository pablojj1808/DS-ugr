
#ifndef P1_S3_FILTERMANAGER_H
#define P1_S3_FILTERMANAGER_H

#include <memory>
#include "FilterChain.h"

class FilterManager {

    FilterChain filterChain;
    std::unique_ptr<Target> target;

public:
    FilterManager(Target* t);

    void addFilter(Filter* & f);

    void filterRequest();
};


#endif //P1_S3_FILTERMANAGER_H
