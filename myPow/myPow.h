//
// Created by msi-user on 2022/11/4.
//

#ifndef MYPOW_MYPOW_H
#define MYPOW_MYPOW_H
#include "math.h"
using namespace std;
class Solution {
public:
    double posPow(double x,int n){
        double temp = x;
        for (int i = 0; i < n - 1; i++)
        {
            /* code */
            x *= temp;
        }
        return x;
    }
    double myPow(double x, int n) {
        if (n == 0)
        {
            return 1;
        }
        else if (n > 0){
            return posPow(x,n);
        }
        return 1/posPow(x,abs(n));
    }
};

#endif //MYPOW_MYPOW_H
