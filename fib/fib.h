//
// Created by msi-user on 2022/10/29.
//

#ifndef FIB_FIB_H
#define FIB_FIB_H

#include "math.h"

class Solution {
public:
    int fib(int n) {
        if (n == 0)
            return 0;
        if (n == 1)
            return 1;
        int p = 0,q = 1, r=1;
        for (int i = 2; i <= n; ++i) {
            r = (p+q)%1000000007;
            p =q;
            q =r;

        }
        return r;
    }
};


#endif //FIB_FIB_H
