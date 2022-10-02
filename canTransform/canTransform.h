//
// Created by msi-user on 2022/10/2.
//
#include "string"

using namespace std;
#ifndef CANTRANSFORM_CANTRANSFORM_H
#define CANTRANSFORM_CANTRANSFORM_H

class Solution {
public:
    bool canTransform(string start, string end) {
        int n = start.size();
        int i = 0, j = 0;
        while (true) {
            while (i < n && start[i] == 'X') ++i;
            while (j < n && end[j] == 'X') ++j;
            if (i == n && j == n) return true;
            if (i == n || j == n || start[i] != end[j]) return false;
            if (start[i] == 'L' && i < j) return false;
            if (start[i] == 'R' && i > j) return false;
            ++i;
            ++j;
        }
    }
};

#endif //CANTRANSFORM_CANTRANSFORM_H
