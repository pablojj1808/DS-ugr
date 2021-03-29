
#include <iostream>
#include "Cliente.h"

void Cliente::setFilterManager(FilterManager* fm) {
    this->fmanager = std::unique_ptr<FilterManager>(fm);
}

void Cliente::sendRequest(double& precio) {

    this->fmanager->filterRequest(precio);
}