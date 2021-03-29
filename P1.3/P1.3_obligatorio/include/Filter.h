
#ifndef P1_S3_FILTER_H
#define P1_S3_FILTER_H

#include "Target.h"
#include <random>

using namespace std;

struct Filter {
    virtual void execute(Target& t) = 0;

    double aleatorio(int min, int max) {
        static default_random_engine generador( (random_device())() );
        static uniform_real_distribution<double> distribucion_uniforme( min, max ) ;
        return distribucion_uniforme( generador );
    }
};


#endif //P1_S3_FILTER_H
