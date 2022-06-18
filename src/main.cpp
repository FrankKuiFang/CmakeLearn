
#include <iostream>
#include "hypod.hpp"
#include "common_lib/utils.h"

int main(int argc, char** arg) {
    std::cout << "Starting Main.....\n";
    hypod();
    auto a = util::calAbs(-2.9);
    std::cout << "a="<< a << std::endl;
    return 0;
}
