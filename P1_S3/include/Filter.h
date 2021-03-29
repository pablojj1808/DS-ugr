
#ifndef P1_S3_FILTER_H
#define P1_S3_FILTER_H


struct Filter {
    virtual double execute(double& precio) = 0;
};


#endif //P1_S3_FILTER_H
