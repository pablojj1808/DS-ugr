#ifndef P1_S3_CLIENTE_H
#define P1_S3_CLIENTE_H

#include <memory>
#include "FilterManager.h"

class Cliente {

    std::unique_ptr<FilterManager> fmanager;

public:
    Cliente() = default;

    void setFilterManager(FilterManager * fm);

    void sendRequest(double& precio);

};


#endif //P1_S3_CLIENTE_H
