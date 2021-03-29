#include "FilterChain.h"
#include <iostream>
FilterChain::FilterChain() {
    this->filters = std::list<Filter*>();
}

void FilterChain::addFilter(Filter* & f) {
    this->filters.push_back(f);
}

void FilterChain::execute(double& precio) {
    std::cout << "---\n";
    std::cout << filters.size() << std::endl;
    for(std::list<Filter*>::iterator it = filters.begin(); it!=filters.end(); ++it) {

        (*it)->execute(precio);
    }
}
