#include "FilterChain.h"
#include <iostream>
FilterChain::FilterChain() {
    this->filters = std::list<Filter*>();
}

void FilterChain::addFilter(Filter* & f) {
    this->filters.push_back(f);
}

void FilterChain::execute(Target & t) {
    for(Filter* f : filters) {
        f->execute(t);
    }
}
