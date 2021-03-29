#include <random>
#include <iostream>
#include "Target.h"
#include "color.h"



Target::Target(double precio)
{
    this->precio = precio;
    this->state = NEUTRO;
    this->demanda = 0;
}

void Target::setPrecio(double p)
{
    this->precio = p;
}

double Target::getPrecio() const
{
    return this->precio;
}

estado Target::getEstado() const
{
    return state;
}

void Target::addLog(std::string log)
{
    logger.push(log);
}

void Target::leerLog()
{
    int c = 0;
    std::cout << YEL(CURS("..logger........")) << std::endl;
    while (!logger.empty())
    {
        std::cout << KBLU << (c + 1) << ": " << logger.front() << RST << std::endl;
        logger.pop();
        c++;
    }
    std::cout << YEL(CURS("........................")) << std::endl;
}

void Target::setDemanda(double d) {
    demanda = d;
}

double Target::getDemanda() const {
    return demanda;
}

string estados[]= {
    "NEUTRO",
    "EN_OFERTA",
    "SIN_OFERTA"
};

void Target::execute() {
    this->leerLog();
    std::cout << BOLD("PRECIO FINAL: ") << precio << " €" << std::endl;
    std::cout << BOLD("ESATDO      : ") << estados[state] << std::endl;
    std::cout << BOLD("DEMANDA     : ") << demanda << " %" << std::endl;

    // Cambiamos estado
    if(precio >= 100)     state = EN_OFERTA;
    else if(precio < 50)  state = SIN_OFERTA;
    else                  state = NEUTRO;


    cout << endl << endl;
}