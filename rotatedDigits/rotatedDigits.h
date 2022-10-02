//
// Created by msi-user on 2022/9/25.
//
#include "vector"
#include "string"
#include "cmath"
using namespace std;
#ifndef ROTATEDDIGITS_ROTATEDDIGITS_H
#define ROTATEDDIGITS_ROTATEDDIGITS_H

class Solution {
public:
    int pairs(int i){
        if (i == 1)
            return 1;
        if (i == 0)
            return 0;
        if (i == 8)
            return 8;
        if (i == 2)
            return 5;
        if (i == 5)
            return 2;
        if (i == 6)
            return 9;
        if (i == 9)
            return 6;
        return 0;
    };
    int reverseNum(int n){
        string a =to_string(n);
        vector<int> num;
        int sum = 0;
        for (int i = 0; i < a.size(); ++i) {
            num.push_back(int(a[i]-'0'));
            if(!(num[i] == 1 || num[i] == 0 || num[i] == 2 || num[i] == 5 || num[i] == 6 || num[i] == 9 || num[i] == 8)){
                return 0;
            }
            sum = sum + pairs(num[i])*pow(10,a.size()-1-i);
        }
        return sum;
    }
    int rotatedDigits(int n) {
        int count = 0;
        for (int i = 0; i <= n; ++i) {
            if((reverseNum(i) != 0)&& reverseNum(i) != i )
                count++;
        }
        return count;
    }
};


#endif //ROTATEDDIGITS_ROTATEDDIGITS_H
