#include "Mammal.hh"

Mammal::Mammal(std::string name, int age, double weight) : Animal(name, age, weight){};

bool Mammal::hasFur(){
    return true;
}
bool Mammal::laysEggs(){
    return false;
}
