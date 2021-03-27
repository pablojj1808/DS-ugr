//
// Created by Pablo Jj on 24/3/21.
//

#include "FilterChain.h"
FilterChain::FilterChain(const Target & t) {
    this->target = t;
    this->filters = std::list<Filter>();
}

void FilterChain::addFilter(const Filter & f) {
    this->filters.push_back(f);
}

void FilterChain::execute() {
    for(Filter & f : filters) {
        f.execute();
    }
}

void FilterChain::setTarget(const Target & t) {
    this->target = target;
}