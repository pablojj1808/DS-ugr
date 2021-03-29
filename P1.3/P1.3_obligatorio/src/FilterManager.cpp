#include <iostream>
#include "FilterManager.h"

FilterManager::FilterManager(Target*  t) {
    this->target = std::unique_ptr<Target>(t);
}

void FilterManager::addFilter(Filter* & f) {
    this->filterChain.addFilter(f);
}

void FilterManager::filterRequest() {
    this->filterChain.execute(*target);
    this->target->execute();
}