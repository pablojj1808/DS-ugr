
#include <iostream>
#include "Target.h"

Target::Target(double precio) {
    this->precio = precio;
}

void Target::setPrecio(double p) {
    this->precio = p;
}

double Target::getPrecio() const {
    return this->precio;
}

void Target::execute() {
    std::cout << "PRECIO FINAL: " << precio << std::endl;
}