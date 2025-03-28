#include "algorithm.h"

Algorithm::Algorithm(double p1, int p2, bool p3)
    : param1(p1), param2(p2), param3(p3) {}

double Algorithm::compute() {
    return param3 ? param1 * param2 : param1 + param2;
}
