#include "Animal.hh"
#pragma once

//makes mammal inherit from animal
class Mammal: public Animal{
    public:
        Mammal(std::string, int, double); // forbids the base constructor
        bool hasFur();
        bool laysEggs();
};
