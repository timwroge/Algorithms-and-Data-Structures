#include "Animal.hh"

// sets the defaults to name age and weight
Animal::Animal (std::string name, int age , double weight) : Name{name}, Age{age}, Weight{weight} {};

std::string Animal::getName(){
    return this->Name;
}
