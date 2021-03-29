
#ifndef P1_S3_TARGET_H
#define P1_S3_TARGET_H

#include <queue>
#include "estado.h"
#include <string>
#include <memory>

using namespace std;

class Target {
    double precio;
    double demanda;
    estado state;
    queue<string> logger;

public:
    Target(double precio);

    void setPrecio(double p);

    double getPrecio() const;

    estado getEstado() const;

    void setDemanda(double);

    void addLog(string log);

    void leerLog();

    double getDemanda() const;

    void execute();
};


#endif //P1_S3_TARGET_H
