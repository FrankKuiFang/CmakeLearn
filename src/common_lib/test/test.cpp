#include <iostream>
#include "utils.h"

namespace cmake_learn {
namespace common_lib{
void test_cal_abs() {
    std::cout << "\ntest_cal_abs start\n";
    auto res = util::calAbs(-5);
    std::cout << "res=" << res << std::endl;
    std::cout << "test_cal_abs end\n";
    return;
}


}
}

using namespace cmake_learn::common_lib;
int main() {
    test_cal_abs();
    return 0;
}