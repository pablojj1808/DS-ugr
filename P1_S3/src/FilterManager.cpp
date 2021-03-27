//
// Created by Pablo Jj on 24/3/21.
//

#include "FilterManager.h"

FilterManager::FilterManager(const Target & t) {
    this->filterChain = std::unique_ptr<FilterChain>(t);
}

void FilterManager::addFilter(const Filter & f) {
    this->filterChain->addFilter(f);
}

void FilterManager::filterRequest() {
    this->filterChain->execute();
}