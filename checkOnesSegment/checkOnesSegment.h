//
// Created by msi-user on 2022/10/3.
//

#ifndef CHECKONESSEGMENT_CHECKONESSEGMENT_H
#define CHECKONESSEGMENT_CHECKONESSEGMENT_H
#include "string"

using namespace std;

class Solution {
public:
    bool checkOnesSegment(string s) {
        int count = 0;
        for (int i = 0; i < s.size()-1; ++i) {
            if (s[i] != s[i+1])
                count++;
            if (count>1)
                return false;
        }
        return true;
    }
};

#endif //CHECKONESSEGMENT_CHECKONESSEGMENT_H
