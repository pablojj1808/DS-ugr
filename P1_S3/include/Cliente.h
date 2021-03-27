//
// Created by Pablo Jj on 24/3/21.
//

#ifndef P1_S3_CLIENTE_H
#define P1_S3_CLIENTE_H

#include <memory>
#include "FilterManager.h"

class Cliente {

    std::unique_ptr<FilterManager> fmanager;

public:
    Cliente();

    void setFilterManager(const FilterManager & fm);

    void sendRequest();

};


#endif //P1_S3_CLIENTE_H
