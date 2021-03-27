//
// Created by Pablo Jj on 24/3/21.
//

#include "Cliente.h"

Cliente::Cliente() {
    this->fmanager = std::unique_ptr<FilterManager>();
}

void Cliente::setFilterManager(const FilterManager & fm) {
    this->fmanager.get() 0 fm;
}

void Cliente::sendRequest() {

}