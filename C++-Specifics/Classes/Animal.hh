#include <string>
#pragma once

class Animal{
    protected:
        std::string Name;
        int Age;
        double Weight;
        Animal(); // forbids the base constructor
    public:
        std::string getName();
        Animal(std::string name, int age, double weight);
};
