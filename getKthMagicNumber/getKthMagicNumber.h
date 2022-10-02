//
// Created by msi-user on 2022/9/28.
//
#include "vector"

using namespace std;
#ifndef GETKTHMAGICNUMBER_GETKTHMAGICNUMBER_H
#define GETKTHMAGICNUMBER_GETKTHMAGICNUMBER_H


class Solution {
public:
    int getKthMagicNumber(int k) {
        vector<int> numList(k);
        numList[0] = 0;
        int p3 = 0,p5 = 0,p7 = 0;
        for (int i = 1; i < k; ++i) {
            numList[i] = min(min(numList[p3]*3,numList[p5]*5),numList[p7]*7);
            if (numList[i] == numList[p3]*3)
                p3++;
            if (numList[i] == numList[p5]*5)
                p5++;
            if (numList[i] == numList[p7]*7)
                p7++;
        }
        return numList[k-1];
    }
};

#endif //GETKTHMAGICNUMBER_GETKTHMAGICNUMBER_H
