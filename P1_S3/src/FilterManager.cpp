#include <iostream>
#include "FilterManager.h"

FilterManager::FilterManager(Target*  t) {
    this->target = std::unique_ptr<Target>(t);

}

void FilterManager::addFilter(Filter* & f) {
    this->filterChain.addFilter(f);
}

void FilterManager::filterRequest(double& precio) {
std::cout << "antes\n";
    this->filterChain.execute(precio);
    std::cout << "despues\n";
    this->target->execute(precio);
}