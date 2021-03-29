
#ifndef P1_S3_TARGET_H
#define P1_S3_TARGET_H



class Target {
    double precio;


public:
    Target(double precio);

    void setPrecio(double p);

    double getPrecio() const;

    void execute();
};


#endif //P1_S3_TARGET_H
