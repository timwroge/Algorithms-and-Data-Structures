#include <iostream>
#include "Animal.hh"
#include "Mammal.hh"

int main(void){
    std::cout<< "===== Classes Example ====="<< std::endl;

    Animal MyAnimal("Plankton", 3, 5.6);

    Mammal MyCow("Cow", 6, 10.6);

    std::cout<< "My Animal Name "<< MyAnimal.getName()<<std::endl;
    std::cout<< "My Mammal Name "<< MyCow.getName()<<std::endl;
    std::cout<< "   Mammal has fur? "<< MyCow.hasFur()<<std::endl;
    std::cout<< "   Mammal lays eggs? "<< MyCow.laysEggs()<<std::endl;
}
